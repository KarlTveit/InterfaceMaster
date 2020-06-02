#include "publish.hpp"
#include "tracksimple.hpp"
//#include "kalman.hpp"
//#include "model.hpp"
#include "IMU.hpp"
#include "ros/ros.h"
#include "std_msgs/String.h"
using namespace std;
#include <iostream>
#include <sstream>
#include <fstream>
#include <librealsense2/rs.hpp> // Include RealSense Cross Platform API
#include <opencv2/core.hpp>   // Include OpenCV API
#include <opencv2/imgcodecs.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/aruco.hpp>
#include <opencv2/calib3d.hpp>
#include <GL/glut.h>
//#include "../realsense/librealsense/examples/example.hpp"

#include <unistd.h>
//using namespace cv;

int cain(int argc, char **argv){
	cout << "from main" << endl;
	//printSum();

	//imu_pose();
		//publish(argc, argv,"meesage");
		
		//usleep(100000);
        //float3 a = algo.get_theta();
		//simple(argc,argv);
		
		//imu_pose();
        //std::cout << "x: " << a.x << ", y: " << a.y << ", z: " << a.z << std::endl;
	
	//simple();

}