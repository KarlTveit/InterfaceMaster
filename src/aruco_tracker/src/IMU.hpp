#ifndef IMU
#define IMU


#include <librealsense2/rs.hpp> // Include RealSense Cross Platform API
//#include "../realsense/librealsense/examples/example.hpp"

// License: Apache 2.0. See LICENSE file in root directory.
// Copyright(c) 2019 Intel Corporation. All Rights Reserved.
//#include <GL/glut.h>
#include <mutex>
#include <cstring>
#include <iostream>
#include <math.h>
#include <sstream>
#include <fstream>
#include <unistd.h>

int imu_pose();

struct float3 { 
    float x, y, z; 
    float3 operator*(float t)
    {
        return { x * t, y * t, z * t };
    }

    float3 operator-(float t)
    {
        return { x - t, y - t, z - t };
    }

    void operator*=(float t)
    {
        x = x * t;
        y = y * t;
        z = z * t;
    }

    void operator=(float3 other)
    {
        x = other.x;
        y = other.y;
        z = other.z;
    }

    void add(float t1, float t2, float t3)
    {
        x += t1;
        y += t2;
        z += t3;
    }
};


struct short3
{
    uint16_t x, y, z;
};

#include "librealsense/common/res/d435.h"
/*
class camera_renderer
{

	std::vector<float3> positions, normals;
    std::vector<short3> indexes;
	public:
    // Initialize renderer with data needed to draw the camera
    camera_renderer();
    void render_camera(float3 theta);
};
*/
class rotation_estimator{
    public:
    float3 gyro_angle;
	float3 theta;
    std::mutex theta_mtx;
    float3 accel_angle;
    float PI;
    float a;
    /* alpha indicates the part that gyro and accelerometer take in computation of theta; higher alpha gives more weight to gyro, but too high
    values cause drift; lower alpha gives more weight to accelerometer, which is more sensitive to disturbances */
    float alpha;
    bool first;
    // Keeps the arrival time of previous gyro frame
    double last_ts_gyro;
	
    rotation_estimator();
	void process_gyro(rs2_vector gyro_data, double ts);
	void process_accel(rs2_vector accel_data);
    float3 get_theta();
};

#endif