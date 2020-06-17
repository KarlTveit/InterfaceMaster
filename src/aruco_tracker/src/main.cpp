#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <iostream>
#include <fstream>
#include <opencv2/core.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/aruco.hpp>
#include <opencv2/calib3d.hpp>
#include <librealsense2/rs.hpp>
#include "geometry_msgs/TransformStamped.h"
#include "geometry_msgs/Twist.h"
#include <tf2/LinearMath/Quaternion.h>
#include <tf2_ros/transform_broadcaster.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
#include "tools.hpp"
#include <tf2/LinearMath/Matrix3x3.h>
#include <cstdio>
#include <ctime>

static const std::string OPENCV_WINDOW = "Image window";

using namespace std;
class ImageConverter
{
  //Calibration variables
  float CMData[9] = { 610.6568603515625, 0.0, 320.3746337890625, 0.0, 609.3202514648438, 241.3703155517578, 0.0, 0.0, 1.0 };
  float distData[5] = { 0.0, 0.0, 0.0, 0.0, 0.0};
  cv::Mat imageCopy; 
  cv::Mat camera_matrix =  cv::Mat(3, 3, CV_32F,CMData);
  cv::Mat dist_coeffs = cv::Mat(1, 5, CV_32F,distData);
  const float arucoSquareDimension = 0.1325f;

  //The ArUco library
  cv::Ptr<cv::aruco::Dictionary> dictionary = cv::aruco::getPredefinedDictionary(cv::aruco::DICT_4X4_50);
  std::vector<int> ids;
  std::vector<std::vector<cv::Point2f> > corners;
  std::vector<cv::Vec3d> rvecs, tvecs;

  //Estimated Rotation and translation vectors
  cv::Vec3d estimateRvecs;
  cv::Vec3d estimateTvecs;
  ros::NodeHandle nh_;
  bool clockflag;

  float savedZ_axis;
  // The ROS publishers and subscribers are defined
  image_transport::ImageTransport it_;
  image_transport::Subscriber image_sub_;
  image_transport::Publisher image_pub_;
  ros::Publisher pose_pub;
  ros::Publisher measure_pub;
  
  clock_t start;
  double duration;

  tf2_ros::TransformBroadcaster br;
  geometry_msgs::TransformStamped pose_msg;
  geometry_msgs::Twist measurement_msg;
  
  bool received_frame = false;
  ofstream outfile;
  cv::Vec2d FirstPoint;
  cv::Vec2d SecondPoint;
  int incrementer = 0;
  
  bool flag1 = false;
  bool flag2 = false;
  bool measurementFlag = false;
  
  //Subscribing to the estimate camera pose from the msf framework
  ros::Subscriber estimate_sub;
  ros::Subscriber measure_sub;
  

public:
  ImageConverter()
    : it_(nh_)
  {
    //outfile.open("motionx1.txt"); //For testing
    // Subscribe to input video feed and publish output video feed
    image_sub_ = it_.subscribe("/camera/color/image_raw", 1,&ImageConverter::imageCb, this);
    image_pub_ = it_.advertise("/image_converter/output_video/", 1);
    measure_pub = nh_.advertise<geometry_msgs::Twist>("Measurement", 1);
    pose_pub = nh_.advertise<geometry_msgs::TransformStamped>("MarkerPose", 1);

    //Window for displaying stream, not needed for application
    cv::namedWindow(OPENCV_WINDOW);
    start = std::clock();
    //This subscriber gets the pose from the EKF
    estimate_sub = nh_.subscribe("/msf_core/pose",1,&ImageConverter::ConvertEstimate,this);
      //This subscriber gets the measurement pixels from Unity
    measure_sub = nh_.subscribe("/MeasurePoints",1,&ImageConverter::pixelCallback,this);
  }

  ~ImageConverter()
  {
    cv::destroyWindow(OPENCV_WINDOW);
  }

  //Callback function run everytime a new RGB frame is received
  void imageCb(const sensor_msgs::ImageConstPtr& msg)
  {
    cv_bridge::CvImagePtr cv_ptr;
    try
    {
      cv_ptr = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
    }
    catch (cv_bridge::Exception& e)
    {
      ROS_ERROR("cv_bridge exception: %s", e.what());
      return;
    }

    

    //std::cout<<"Duration: "<< duration <<'\n';//For testing
    //Aruco detection algorithm
    cv::aruco::detectMarkers(cv_ptr->image, dictionary, corners, ids);
    if (ids.size() > 0)
        {
            received_frame = true;
            cv::aruco::drawDetectedMarkers(cv_ptr->image, corners, ids);
            //Rotation and translation vectors are estimated from the following funciton
            cv::aruco::estimatePoseSingleMarkers(corners, arucoSquareDimension, camera_matrix, dist_coeffs, rvecs, tvecs);
            for (int i = 0; i < ids.size(); i++)
            {
              cv::aruco::drawAxis(cv_ptr->image, camera_matrix, dist_coeffs, rvecs[i], tvecs[i], 0.1);
            }
                        
            tf2::Quaternion q;

            //Convert to quaternions
            q.setRPY(rvecs[0](0),rvecs[0](1),rvecs[0](2));
            //Create a pose message stamped
            pose_msg.header.stamp = ros::Time::now();
            pose_msg.header.frame_id = "world";
            pose_msg.child_frame_id = "marker";
            pose_msg.transform.translation.x = tvecs[0](0);
            pose_msg.transform.translation.y = tvecs[0](1);
            pose_msg.transform.translation.z = tvecs[0](2);
            pose_msg.transform.rotation.x = q.x();
            pose_msg.transform.rotation.y = q.y();
            pose_msg.transform.rotation.z = q.z();
            pose_msg.transform.rotation.w = q.w();
            // Send transformed pose to EKF
            br.sendTransform(pose_msg);
            //duration = ( std::clock() - start ) / (double) CLOCKS_PER_SEC;//For testing
            /*if (duration > 5 && duration < 10)
            {
              if (flag1 == false){
                savedZ_axis = estimateTvecs[2];
                flag1 == true;
              }
              outfile << duration-5 << "," << estimateTvecs[0]-(tvecs[0](0)) << "," << estimateTvecs[1]-(tvecs[1](0)) << "," << estimateTvecs[2]-(savedZ_axis) << endl;
              //duration = ( std::clock() - start ) / (double) CLOCKS_PER_SEC;
              clockflag = 1;
            }
            else
            {
              pose_pub.publish(pose_msg);
              if(clockflag == 1){
                flag1 = false;
                start = std::clock();
                clockflag = 0;  
                outfile << -1 <<","<< -1 <<","<< -1 << "," << -1<< endl;
              }
              
            }*/ //For testing
            
            pose_pub.publish(pose_msg);
            
    }

   //If marker previously detected, but no longer visible (occlusion)
    if (received_frame == true && ids.size() == 0)
    {
      cv::aruco::drawAxis(cv_ptr->image, camera_matrix, dist_coeffs, estimateRvecs, estimateTvecs, 0.1);
    }
    //Publish modified image to ROS
    image_pub_.publish(cv_ptr->toImageMsg());
  cv::imshow(OPENCV_WINDOW, cv_ptr->image);
  cv::waitKey(3);
  }

//Converts message from posewithcovariance stamped to rotation and translation vectors
void ConvertEstimate(const geometry_msgs::PoseWithCovarianceStamped::ConstPtr& msg){
    double x = msg->pose.pose.position.x;
    double y = msg->pose.pose.position.y;
    double z = msg->pose.pose.position.z;

    tf2::Quaternion q(
        msg->pose.pose.orientation.x,
        msg->pose.pose.orientation.y,
        msg->pose.pose.orientation.z,
        msg->pose.pose.orientation.w);
    tf2::Matrix3x3 m(q);
    double roll, pitch, yaw;
    m.getRPY(roll, pitch, yaw);

    estimateTvecs[0] = x;
    estimateTvecs[1] = y;
    estimateTvecs[2] = z;
    estimateRvecs[0] = roll;
    estimateRvecs[1] = pitch;
    estimateRvecs[2] = yaw;

    
    
}

void pixelCallback(const geometry_msgs::Twist::ConstPtr& msg){
    //This function waits for Unity to publish a new measurement call, then sets a flag so the measurement can be done in the depth listener
    if(msg->linear.z != incrementer) {
    FirstPoint[0] = msg->linear.x;
    FirstPoint[1] = msg->linear.y;
    SecondPoint[0] = msg->angular.y;
    SecondPoint[1] = msg->angular.z;
    incrementer = msg->linear.z;
    measurementFlag = true;
  }
  cv::Vec3d measurement = measureDistance(FirstPoint,SecondPoint);
  measure_pub.publish(measurement_msg);


}

//This funciton measures the euclidean distance between two points
//It is a simpler version of the rs_measurement example function
cv::Vec3d measureDistance(cv::Vec3d FirstPoint,cv::Vec3d SecondPoint){

  auto udist = frame.get_distance(FirstPoint[0], FirstPoint[1]);
    auto vdist = frame.get_distance(SecondPoint[0], SecondPoint[1]);
    cv::Vec3d upoint;
    cv::Vec3d vpoint;
    cv::Vec2d upixel = (FirstPoint[0], FirstPoint[1]);
    cv::Vec2d vpixel = (SecondPoint[0], SecondPoint[1]);
    // Deproject from pixel to point in 3D
    rs2_intrinsics intr = frame.get_profile().as<rs2::video_stream_profile>().get_intrinsics(); // Calibration data
    rs2_deproject_pixel_to_point(upoint, &intr, upixel, udist);
    rs2_deproject_pixel_to_point(vpoint, &intr, vpixel, vdist);

    // Calculate euclidean distance between the two points
    return cv::Vec3d[ sqrt(pow(upoint[0] - vpoint[0], 2) +
                pow(upoint[1] - vpoint[1], 2) +
                pow(upoint[2] - vpoint[2], 2)),upoint,vpoint];


};
int main(int argc, char** argv)
{
  ros::init(argc, argv, "image_converter");
  ImageConverter ic;
  ros::spin();
  return 0;
}
