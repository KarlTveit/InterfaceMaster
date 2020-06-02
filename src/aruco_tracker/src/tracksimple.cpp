#include "tracksimple.hpp"
//#include "std_msgs/String.h"
//#include <ros/ros.h>


using namespace std;
const float calibrationSquareDimension = 0.0264f;
const float arucoSquareDimension = 0.1325f;
const int waitTime = 4;
using namespace cv;

#define SIG_GYRO_CHANGE 0.01
#define SIG_ACC_CHANGE 0.01


Quaternion accelerometerQuaternion;
Quaternion visionQuaternion;
std::vector<cv::Vec3d> Refrvecs,Reftvecs;
std::vector<cv::Vec3d> CorrectedRvecs, CorrectedTvecs;

float3 initIMU;
float3 correctedIMU;
Mat rotation3x3;
//rs2_vector saved_gyro_data
//rs2_vector saved_gyro_data
//Refrvecs[0] = 0;



Quaternion convertToQuaternion(double yaw, double pitch, double roll){
	double cy = cos(yaw * 0.5);
    double sy = sin(yaw * 0.5);
    double cp = cos(pitch * 0.5);
    double sp = sin(pitch * 0.5);
    double cr = cos(roll * 0.5);
    double sr = sin(roll * 0.5);

    Quaternion q;
    q.w = cy * cp * cr + sy * sp * sr;
    q.x = cy * cp * sr - sy * sp * cr;
    q.y = sy * cp * sr + cy * sp * cr;
    q.z = sy * cp * cr - cy * sp * sr;

    return q;
}

std::vector<Quaternion> init(){

}


void simple(int argc, char **argv)
{
	int finishedInitialization = 0;
	
	//Read the camera parameters from the file "camera parameters.yml"
	Mat camera_matrix, dist_coeffs;
	cv::FileStorage fs2("camera_parameters.xml", cv::FileStorage::READ);
	
	fs2["camera_matrix"] >> camera_matrix;
	fs2["distortion_coefficients"] >> dist_coeffs;

	//Hardcode workaround necessary because of ROS file system
	float CMData[9] = { 640.176392, 0., 633.434692, 0.,638.378967, 400.773804, 0., 0., 1. };
	float distData[5] = { -0.055755, 0.060900, 0.000155, -0.000262, -0.019587};

	camera_matrix =  cv::Mat(3, 3, CV_32F,CMData);
	dist_coeffs = cv::Mat(1, 5, CV_32F,CMData);

	std::cout << "camera_matrix\n" << camera_matrix << std::endl;
    std::cout << "\ndist coeffs\n" << dist_coeffs << std::endl;

    std::ostringstream vector_to_marker;
    
	cv::VideoCapture inputVideo;

	
	
    // Declare RealSense pipeline, encapsulating the actual device and sensors
    cv::Ptr<cv::aruco::Dictionary> dictionary = cv::aruco::getPredefinedDictionary(cv::aruco::DICT_4X4_50);

    
    // Start streaming with default recommended configuration
    
    
    std::vector<cv::Vec3d> savedRvecs, savedTvecs;
    

    
    

    //std::cout << "\nyoyo\n" << dist_coeffs << std::endl;
    rs2::pipeline pipe;
    rs2::config cfg;
    rs2::colorizer color_map;
    //cfg.enable_stream(RS2_STREAM_COLOR,640,480, RS2_FORMAT_BGR8, 30);
    cfg.enable_stream(RS2_STREAM_ACCEL, RS2_FORMAT_MOTION_XYZ32F);
    cfg.enable_stream(RS2_STREAM_GYRO, RS2_FORMAT_MOTION_XYZ32F);

    cfg.enable_stream(RS2_STREAM_COLOR, 640, 480, RS2_FORMAT_BGR8, 30);
	//cfg.enable_stream(RS2_STREAM_DEPTH, 640, 480, RS2_FORMAT_Z16, 30);
 
    rotation_estimator algo;
    rs2::frame other_frame;
    //rs2::frame aligned_depth_frame;
	cv::Mat image_D;
	cv::Mat image_C;

	std::mutex theta_img;
	rs2_vector saved_accel_data;
	rs2_vector saved_gyro_data;
	


	auto callback = [&](const rs2::frame& frame)
	{
			if (auto fs = frame.as<rs2::frameset>()) 
			{
				std::lock_guard<std::mutex> lock(theta_img);
				for (size_t i = 0; i < fs.size(); ++i)
				{
					rs2::frame temp = fs[i];
					auto profile = fs.get_profile();
					if (auto vf = temp.as<rs2::video_frame>())
					{
						//if (i==0)
							//aligned_depth_frame = vf.as<rs2::depth_frame>().apply_filter(color_map);
					    //else
							other_frame = vf;
					}
				}

			}
			//imu frame
			else if (frame.as<rs2::motion_frame>())
			{
				/* code */
			
			    auto motion = frame.as<rs2::motion_frame>();
		        // If casting succeeded and the arrived frame is from gyro stream
		        if (motion && motion.get_profile().stream_type() == RS2_STREAM_GYRO && motion.get_profile().format() == RS2_FORMAT_MOTION_XYZ32F)
		        {
		        	//cout << "IN first if" << endl;
		            // Get the timestamp of the current frame
		            double ts = motion.get_timestamp();
		            // Get gyro measures
		            rs2_vector gyro_data = motion.get_motion_data();
		            rs2_vector saved_gyro_data = gyro_data;
					//std::cout << "new gyro data" << std::endl;
		            // Call function that computes the angle of motion based on the retrieved measures
		            algo.process_gyro(gyro_data, ts);
		        }
		        // If casting succeeded and the arrived frame is from accelerometer stream
		        if (motion && motion.get_profile().stream_type() == RS2_STREAM_ACCEL && motion.get_profile().format() == RS2_FORMAT_MOTION_XYZ32F)
		        {
		        	//cout << "IN second if" << endl;
		            // Get accelerometer measures
		            rs2_vector accel_data = motion.get_motion_data();
		            rs2_vector saved_accel_data = accel_data;
	
		            // Call function that computes the angle of motion based on the retrieved measures
		            algo.process_accel(accel_data);
		        }
		    }

		   
	};

	rs2::pipeline_profile profile = pipe.start(cfg , callback);

	
	const auto window_name_2 = "RGB Image";

	namedWindow(window_name_2, WINDOW_AUTOSIZE);

	cv::Mat imageCopy;
	std::vector<int> ids;
	std::vector<std::vector<cv::Point2f> > corners;
	std::vector<cv::Vec3d> rvecs, tvecs;
	
	

	


	while (true)
	{
        float3 a = algo.get_theta();
        //std::cout << "x: " << a.x << ", y: " << a.y << ", z: " << a.z << std::endl;
        correctedIMU.x = a.x - initIMU.x;
        correctedIMU.y = a.y - initIMU.y;
        correctedIMU.z = a.z - initIMU.z;
        accelerometerQuaternion = convertToQuaternion(correctedIMU.x, correctedIMU.y, correctedIMU.z);
        //std::cout << "IMU q_0: " << accelerometerQuaternion.w << " q_1: " << accelerometerQuaternion.x << " q_2: " << accelerometerQuaternion.y << " q_3: " << accelerometerQuaternion.z << std::endl;
        
        publishIMU(argc,argv,saved_accel_data,saved_gyro_data);

        {
        	std::lock_guard<std::mutex> lock(theta_img);

        	if (!other_frame){
        		if (!other_frame)
				//std::cout << "No color frame" << std::endl;
			
				continue;
        	}
	        

			const int w_c = other_frame.as<rs2::video_frame>().get_width();
			const int h_c = other_frame.as<rs2::video_frame>().get_height();

	        //image_D = Mat(Size(w_d, h_d), CV_8UC3, (void*)aligned_depth_frame.get_data(), Mat::AUTO_STEP);
			image_C = Mat(Size(w_c, h_c), CV_8UC3, (void*)other_frame.get_data(), Mat::AUTO_STEP);

			//imshow(window_name_2, image_C);
			//waitKey(1);
		    //inputVideo.retrieve(image);
		    image_C.copyTo(imageCopy);
		    
		    cv::aruco::detectMarkers(image_C, dictionary, corners, ids);
		    
		    //std::vector<cv::Vec3d> savedRvecs, savedTvecs;

		    
		    // if at least one marker detected
		    if (ids.size() > 0)
		    {
		        cv::aruco::drawDetectedMarkers(imageCopy, corners, ids);
		    	cv::aruco::estimatePoseSingleMarkers(corners, arucoSquareDimension, camera_matrix, dist_coeffs, rvecs, tvecs);
		    	savedRvecs = rvecs;
	            savedTvecs = tvecs;
		    	for(int i=0; i < ids.size(); i++)
	            {
	                cv::aruco::drawAxis(imageCopy, camera_matrix, dist_coeffs,
	                        rvecs[i], tvecs[i], 0.1);

	                if(finishedInitialization==0)
	                {
	                	std::cout << "initing" << std::endl;
	                	Refrvecs = rvecs;
	        			Reftvecs = tvecs;
	        			CorrectedRvecs = rvecs;
	        			CorrectedTvecs = tvecs;
	        			initIMU = algo.get_theta();
						finishedInitialization = 1;

						std::cout << "done initing" << std::endl;

	                }
	                //cv::Rodrigues(rvecs[0],rotation3x3);
	                //unsigned char *rotptr = (unsigned char*)(rotation3x3.data);

	                //cout << rotation3x3.at<cv::Vec3b>(0,0) << endl;
	                //cout << rotation3x3.at<cv::Vec3b>(1,1) << endl;
	                //cout << rotation3x3.at<cv::Vec3b>(0,2) << endl;
	                
	                if (0 < rotation3x3.cols*2 +1 < 1)
	                	{std::cout << "HEEEELO" << std::endl;
	            		}

	                CorrectedRvecs[0](0) = abs(rvecs[0](0)) - abs(Refrvecs[0](0));
	                CorrectedRvecs[0](1) = abs(rvecs[0](1)) - abs(Refrvecs[0](1));
	                CorrectedRvecs[0](2) = abs(rvecs[0](2)) - abs(Refrvecs[0](2));
	                
	                //visionQuaternion = convertToQuaternion(rvecs[0](0),rvecs[0](1),rvecs[0](2));
	                //std::cout << "q_0: " << visionQuaternion.w << " q_1: " << visionQuaternion.x << " q_2: " << visionQuaternion.y << " q_3: " << visionQuaternion.z << std::endl;
	                //std::cout << "q_0: " << CorrectedRvecs[0](0) << " q_1: " << CorrectedRvecs[0](1) << " q_2: " << CorrectedRvecs[0](2)  << std::endl;

	                visionQuaternion = convertToQuaternion(CorrectedRvecs[0](0),CorrectedRvecs[0](1),CorrectedRvecs[0](2));
	                //std::cout << "Vision q_0: " << visionQuaternion.w << " q_1: " << visionQuaternion.x << " q_2: " << visionQuaternion.y << " q_3: " << visionQuaternion.z << std::endl;
					//visionQuaternion = convertToQuaternion(Refrvecs[0](0),Refrvecs[0](1),Refrvecs[0](2));
	                //std::cout << "q_0: " << visionQuaternion.w << " q_1: " << visionQuaternion.x << " q_2: " << visionQuaternion.y << " q_3: " << visionQuaternion.z << std::endl;


	                // This section is going to print the data for all the detected
	                // markers. If you have more than a single marker, it is
	                // recommended to change the below section so that either you
	                // only print the data for a specific marker, or you print the
	                // data for each marker separately.
	                vector_to_marker.str(std::string());
	                vector_to_marker << std::setprecision(4)
	                                 << "x: " << std::setw(8) << tvecs[0](0);
	                cv::putText(imageCopy, vector_to_marker.str(),
	                            cv::Point(10, 30), cv::FONT_HERSHEY_SIMPLEX, 0.6,
	                            cv::Scalar(0, 252, 124), 1, LINE_AA);

	                vector_to_marker.str(std::string());
	                vector_to_marker << std::setprecision(4)
	                                 << "y: " << std::setw(8) << tvecs[0](1);
	                cv::putText(imageCopy, vector_to_marker.str(),
	                            cv::Point(10, 50), cv::FONT_HERSHEY_SIMPLEX, 0.6,
	                            cv::Scalar(0, 252, 124), 1, LINE_AA);

	                vector_to_marker.str(std::string());
	                vector_to_marker << std::setprecision(4)
	                                 << "z: " << std::setw(8) << tvecs[0](2);
	                cv::putText(imageCopy, vector_to_marker.str(),
	                            cv::Point(10, 70), cv::FONT_HERSHEY_SIMPLEX, 0.6,
	                            cv::Scalar(0, 252, 124), 1, LINE_AA);

	                vector_to_marker.str(std::string());
	                vector_to_marker << std::setprecision(4)
	                                 << "rvec0: " << std::setw(8) << rvecs[0](0);
	                cv::putText(imageCopy, vector_to_marker.str(),
	                            cv::Point(10, 90), cv::FONT_HERSHEY_SIMPLEX, 0.6,
	                            cv::Scalar(0, 252, 124), 1, LINE_AA);

	                vector_to_marker.str(std::string());
	                vector_to_marker << std::setprecision(4)
	                                 << "rvec1: " << std::setw(8) << rvecs[0](1);
	                cv::putText(imageCopy, vector_to_marker.str(),
	                            cv::Point(10, 110), cv::FONT_HERSHEY_SIMPLEX, 0.6,
	                            cv::Scalar(0, 252, 124), 1, LINE_AA);

	                vector_to_marker.str(std::string());
	                vector_to_marker << std::setprecision(4)
	                                 << "rvec2: " << std::setw(8) << rvecs[0](2);
	                cv::putText(imageCopy, vector_to_marker.str(),
	                            cv::Point(10, 130), cv::FONT_HERSHEY_SIMPLEX, 0.6,
	                            cv::Scalar(0, 252, 124), 1, LINE_AA);
	            
				    //cout << "id size" << ids.size() << endl;
			        //if there are no markers detected:
			        
			        if (ids.size() == 0)
			        	cv::aruco::drawDetectedMarkers(imageCopy, corners, ids);
			        	cv::aruco::drawAxis(imageCopy, camera_matrix, dist_coeffs, savedRvecs[0], savedTvecs[0], 0.1);
			        	//cout << "pre correction rvec" << savedRvecs[0] << endl;
			        	//cout << "pre correction tvec" << savedTvecs[0] << endl;
			        	//acc_delta
			        	//commence correction
			        	//if (abs(acc_delta[0]) > 0.2)
			        	//savedTvecs[0](0) = savedTvecs[0](0) + acc_delta[0];

			        	//cout << "post correction rvec" << savedRvecs[0] << endl;
			        	//cout << "post correction tvec" << savedTvecs[0] << endl;
			


				
			
            }
        	}
		cv::imshow("out", imageCopy);
		char key = (char) cv::waitKey(waitTime);
		//if (key == 27)
		//break;
	  	
		
		}
	}
	pipe.stop();
}





/*
void displayVector(float value, std::string identifier, int position)
	vector_to_marker.str(std::string());
    vector_to_marker << std::setprecision(4) << identifier << std::setw(8) << value;
    cv::putText(imageCopy, vector_to_marker.str(),
                cv::Point(10, 30 + 20*position), cv::FONT_HERSHEY_SIMPLEX, 0.6,
                cv::Scalar(0, 252, 124), 1, LINE_AA);


*/
/*
void displayData(std::vector<cv::Vec3d> rvecs,std::vector<cv::Vec3d> tvecs,)
	vector_to_marker.str(std::string());
                vector_to_marker << std::setprecision(4)
                                 << "x: " << std::setw(8) << tvecs[0](0);
                cv::putText(imageCopy, vector_to_marker.str(),
                            cv::Point(10, 30), cv::FONT_HERSHEY_SIMPLEX, 0.6,
                            cv::Scalar(0, 252, 124), 1, LINE_AA);

*/