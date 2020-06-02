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
//static const std::string OPENCV_WINDOW2 = "Depth window";
using namespace std;
class ImageConverter
{
  //cv::Mat camera_matrix, dist_coeffs;
  //float CMData[9] = { 640.176392, 0., 633.434692, 0.,638.378967, 400.773804, 0., 0., 1. };
  //float distData[5] = { -0.055755, 0.060900, 0.000155, -0.000262, -0.019587};
  float CMData[9] = { 610.6568603515625, 0.0, 320.3746337890625, 0.0, 609.3202514648438, 241.3703155517578, 0.0, 0.0, 1.0 };
  float distData[5] = { 0.0, 0.0, 0.0, 0.0, 0.0};
  cv::Mat imageCopy; 
  cv::Mat camera_matrix =  cv::Mat(3, 3, CV_32F,CMData);
  cv::Mat dist_coeffs = cv::Mat(1, 5, CV_32F,distData);
  const float arucoSquareDimension = 0.1325f;
  cv::Ptr<cv::aruco::Dictionary> dictionary = cv::aruco::getPredefinedDictionary(cv::aruco::DICT_4X4_50);
  std::vector<int> ids;
  std::vector<std::vector<cv::Point2f> > corners;
  std::vector<cv::Vec3d> rvecs, tvecs;
  cv::Vec3d estimateRvecs;
  cv::Vec3d estimateTvecs;
  ros::NodeHandle nh_;
  bool clockflag;
  int count = 0;
  float savedZ_axis;
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
    outfile.open("motionz1.txt");
    // Subscribe to input video feed and publish output video feed
    image_sub_ = it_.subscribe("/camera/color/image_raw", 1,&ImageConverter::imageCb, this);
    image_pub_ = it_.advertise("/image_converter/output_video/", 1);
    measure_pub = nh_.advertise<geometry_msgs::Twist>("Measurement", 1);
    pose_pub = nh_.advertise<geometry_msgs::TransformStamped>("MarkerPose", 1);
    cv::namedWindow(OPENCV_WINDOW);
    start = std::clock();
    //cv::namedWindow(OPENCV_WINDOW2);
    estimate_sub = nh_.subscribe("/msf_core/pose",1,&ImageConverter::ConvertEstimate,this);
    std::cout << "HEELLLO" << std::endl;
    //This subscriber gets the measurement pixels from Unity
    measure_sub = nh_.subscribe("/MeasurePoints",1,&ImageConverter::pixelCallback,this);
    
    //This subscriber gets the depth frames from the realsense
    //image_sub_ = it_.subscribe("/camera/depth/image_rect_raw", 1,&ImageConverter::AlignedDepthCallback, this);
  }

  ~ImageConverter()
  {
    cv::destroyWindow(OPENCV_WINDOW);
  }

  void imageCb(const sensor_msgs::ImageConstPtr& msg)
  {
    cv_bridge::CvImagePtr cv_ptr;
    //std::cout << "YOOSS" << std::endl;
    try
    {
      cv_ptr = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
    }
    catch (cv_bridge::Exception& e)
    {
      ROS_ERROR("cv_bridge exception: %s", e.what());
      return;
    }

    // Draw an example circle on the video stream
    
    //if (cv_ptr->image.rows > 60 && cv_ptr->image.cols > 60)
      //cv::circle(cv_ptr->image, cv::Point(50, 50), 10, CV_RGB(255,0,0));

    // Update GUI Window
    
    //cv_ptr->image.copyTo(imageCopy);

    

    std::cout<<"Duration: "<< duration <<'\n';
    cv::aruco::detectMarkers(cv_ptr->image, dictionary, corners, ids);
    if (ids.size() > 0)
        {
            received_frame = true;
            cv::aruco::drawDetectedMarkers(cv_ptr->image, corners, ids);
            cv::aruco::estimatePoseSingleMarkers(corners, arucoSquareDimension, camera_matrix, dist_coeffs, rvecs, tvecs);
            for (int i = 0; i < ids.size(); i++)
            {
              cv::aruco::drawAxis(cv_ptr->image, camera_matrix, dist_coeffs, rvecs[i], tvecs[i], 0.1);
            }
                        
            tf2::Quaternion q;
            q.setRPY(rvecs[0](0),rvecs[0](1),rvecs[0](2));
            //TODO: Rotate to global frame, convert to quaternions and send a geometry_ms::transformed_stamped message
            pose_msg.header.stamp = ros::Time::now();
            pose_msg.header.frame_id = "world";
            pose_msg.child_frame_id = "marker";
            //std::cout <<"rvecs [0](0): "<< rvecs[0](0)<<"rvecs [0](1): "<< rvecs[0](1)<<"rvecs [0](2): "<< rvecs[0](2)<<std::endl;
            //std::cout <<"tvecs [0](0): "<< tvecs[0](0)<<"tvecs [0](1): "<< tvecs[0](1)<<"tvecs [0](2): "<< tvecs[0](2)<<std::endl;
            pose_msg.transform.translation.x = tvecs[0](0);
            pose_msg.transform.translation.y = tvecs[0](1);
            pose_msg.transform.translation.z = tvecs[0](2);
            pose_msg.transform.rotation.x = q.x();
            pose_msg.transform.rotation.y = q.y();
            pose_msg.transform.rotation.z = q.z();
            pose_msg.transform.rotation.w = q.w();
            pose_pub.publish(pose_msg);
            // Output modified video stream
            br.sendTransform(pose_msg);
            //cout << "z:"<< tvecs[2](0) << "  Estimate:" << estimateTvecs[2] << endl;

            /*duration = ( std::clock() - start ) / (double) CLOCKS_PER_SEC;
            if (duration > 5 && duration < 10)
            {
              if (flag1 == false){
                savedZ_axis = estimateTvecs[2];
                flag1 == true;
                cout << count << endl;
                count++;
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
              //}
              
            }
            */
            //pose_pub.publish(pose_msg);
            if (ids.size() > 1)
            {
              std::cout <<"WE'RE GONNA NEED A BIGGER BOAT" << std::endl;
            }
    }

    //std::cout << "estimateTvecs[0]" << estimateTvecs[0] << std::endl;
    if (received_frame == true && ids.size() == 0)
    {

      cv::aruco::drawAxis(cv_ptr->image, camera_matrix, dist_coeffs, estimateRvecs, estimateTvecs, 0.1);
      
      //results << estimateTvecs << " , " << estimateRvecs << "\n";
      //std::cout <<ros::Time::now()<< ","<< estimateTvecs[0]<<","<< estimateTvecs[1]<<","<< estimateTvecs[2]<<std::endl;
      //cout << "writing to file" << endl;
      //results << 1 << endl;
      
    }
      
    image_pub_.publish(cv_ptr->toImageMsg());
  cv::imshow(OPENCV_WINDOW, cv_ptr->image);
  cv::waitKey(3);
  }

void AlignedDepthCallback(const sensor_msgs::ImageConstPtr& msg){
    cv_bridge::CvImagePtr cv_ptr;
    std::cout << ("Something") << std::endl;
    //msg.encoding = sensor_msgs::image_encodings::MONO16;
    try
    {
      if (msg->encoding == "16UC1"){
            sensor_msgs::Image img;
            img.header = msg->header;
            img.height = msg->height;
            img.width = msg->width;
            img.is_bigendian = msg->is_bigendian;
            img.step = msg->step;
            img.data = msg->data;
            img.encoding = "MONO16";
          }
      cv_ptr = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::TYPE_16UC1);
    }

    catch (cv_bridge::Exception& e)
    {
      ROS_ERROR("cv_bridge exception: %s", e.what());
      return;
    }
    //std::cout << ("BIG MANS") << std::endl;
    //rs2::colorizer Colorizer;

    //cv::imshow(OPENCV_WINDOW2, cv_ptr->image);
    //cv::waitKey(3);
}


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
    //std::cout << "HEERE";
    //testParam = x;
    //std::cout << "X IS " << x << std::endl;
    estimateTvecs[0] = x;
    estimateTvecs[1] = y;
    estimateTvecs[2] = z;
    estimateRvecs[0] = roll;
    estimateRvecs[1] = pitch;
    estimateRvecs[2] = yaw;

    //std::cout<<"roll:" << roll << ", pitch: " << pitch << ", yaw: "<< yaw <<std::endl;
    //std::cout<<"x: " << x << ", y: " << y << ", z: " << z << std::endl;
    
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
  //cv::Vec3d measurement = measureDistance(FirstPoint,SecondPoint);
  //cv::Vec3d measurement = (1,2,1);
  measurement_msg.linear.x = 1;
  measurement_msg.linear.y = 1;
  measurement_msg.linear.z = 1;
  measure_pub.publish(measurement_msg);


}
/*
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
} 
*/
/*
void measureDistance(const sensor_msgs::ImageConstPtr& msg)
    if(measurementFlag){
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
    rosflag
    }
    */
};
int main(int argc, char** argv)
{
  ros::init(argc, argv, "image_converter");
  ImageConverter ic;
  ros::spin();
  return 0;
}
