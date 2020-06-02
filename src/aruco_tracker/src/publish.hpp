#ifndef PUBLISHER
#define PUBLISHER
#include <sstream>
#include <stdio.h>
#include <ros/ros.h>
#include <librealsense2/rs.hpp>
#include "geometry_msgs/TransformStamped.h"
#include "sensor_msgs/Imu.h"

void publishIMU(int args,char **s, rs2_vector accelData, rs2_vector gyroData);
void publishVis(int args,char **s, geometry_msgs::TransformStamped message);

#endif 