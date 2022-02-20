//
// Created by zhangtuopu on 2022/2/15.
//
#include "ros/ros.h"
#include "std_msgs/String.h"


int main(int argc,char * argv[])
{
    ros::init(argc,argv,"pub_node");
    ros::NodeHandle n_pub;
    ros::Publisher pub=n_pub.advertise<std_msgs::String>("pub_message",10);
    std_msgs::String message;
    ros::Rate rate(0.5);
    int count=0;
    ros::Duration(3).sleep();
    while(ros::ok())
    {
        count++;
        std::stringstream ss;
        ss<<"hello---->"<<count;
        message.data=ss.str();
        ROS_INFO("publish,%s",ss.str().c_str());
        pub.publish(message);
        rate.sleep();
    }

    return 0;
}