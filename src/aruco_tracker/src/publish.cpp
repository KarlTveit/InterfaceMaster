#include "publish.hpp"
using namespace std;
void publishIMU(int args,char **s, rs2_vector accel_data,rs2_vector gyro_data)
{
    ros::init(args, s, "example_node");
    ros::NodeHandle n("~");
    ros::Publisher imu_data = n.advertise<sensor_msgs::Imu>("chatter", 100);
    ros::Rate loop_rate(50);
    int count = 0;
    
    
        //Tros::spinOnce();
        //std_msgs::String msg;
        sensor_msgs::Imu imu_msg;
        
        imu_msg.header.stamp = ros::Time::now();
		imu_msg.header.frame_id = "/base_link";
		imu_msg.angular_velocity.x = accel_data.x;
		imu_msg.angular_velocity.y = accel_data.y;
		imu_msg.angular_velocity.z = accel_data.z;
		imu_msg.linear_acceleration.x = gyro_data.x;
		imu_msg.linear_acceleration.y = gyro_data.y;
		imu_msg.linear_acceleration.z = gyro_data.z;

        std::stringstream ss;
        ss << "hello world " << count;
        ROS_WARN("PUBLISHING");
        cout << "Publishing" << endl;
        imu_data.publish(imu_msg);
        //ros::spinOnce();
        //loop_rate.sleep();
    
}

void publishVis(int args,char **s, geometry_msgs::TransformStamped message)
{/*
    ros::init(args, s, "example_node");
    ros::NodeHandle n("~");
    ros::Publisher chatter_pub = n.advertise<std_msgs::String>("chatter", 1000);
    ros::Rate loop_rate(50);
    int count = 0;
    while (ros::ok())
    {
        ros::spinOnce();
        //std_msgs::String msg;
        msg = message;

        std::stringstream ss;
        ss << "hello world " << count;
        ROS_WARN("PUBLISHING");
        cout << "Publishing" << endl;
        chatter_pub.publish(msg);
        ros::spinOnce();
        loop_rate.sleep();
    }*/
}