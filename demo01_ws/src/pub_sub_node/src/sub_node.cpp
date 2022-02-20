//
// Created by zhangtuopu on 2022/2/15.
//
#include "ros/ros.h"
#include "std_msgs/String.h"

void msg_process(const std_msgs::String::ConstPtr &msg){
    ROS_INFO("%s",msg->data.c_str());
}

int main(int argc,char * argv[])
{
    ros::init(argc,argv,"sub_node");
    ros::NodeHandle n_sub;
    ros::Subscriber sub=n_sub.subscribe("pub_message",10,msg_process);
    ros::spin();
    return 0;
}