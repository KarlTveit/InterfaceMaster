#ifndef __TRACKING_INCLUDED__
#define __TRACKING_INCLUDED__
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
#include <iomanip>
#include "IMU.hpp"
#include "publish.hpp"
#include <iostream>
#include <sstream>
#include <fstream>
#include <unistd.h>
#include <cstdlib>

struct Quaternion
{
    double w, x, y, z;
};



Quaternion convertToQuaternion(double yaw, double pitch, double roll);
std::vector<Quaternion> init();
void simple(int argc, char **argv);
#endif