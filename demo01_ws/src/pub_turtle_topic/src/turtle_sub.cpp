//
// Created by zhangtuopu on 2022/2/17.
//
#include "ros/ros.h"
#include "turtlesim/Pose.h"

void doMsg(const turtlesim::Pose::ConstPtr &pose)
{
    ROS_INFO("x=%.2f,y=%.2f,theta=%.2f,lv=%.2f,av=%.2f",pose->x,pose->y,pose->theta,pose->linear_velocity,pose->angular_velocity);
}


int main(int argc, char *argv[]) {
    ros::init(argc,argv,"turtle_sub");
    ros::NodeHandle n_s;
    ros::Subscriber sub=n_s.subscribe("/my_turtle/pose",1000,doMsg);
    ros::spin();
    return 0;
}
