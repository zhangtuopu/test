//
// Created by zhangtuopu on 2022/2/15.
//
#include "ros/ros.h"
#include "pub_sub_node/Person.h"

void message_process(const pub_sub_node::Person::ConstPtr& msg)
{
    ROS_INFO("recive:%s,%d,%f",msg->name.c_str(),msg->age,msg->height);
}

int main(int argc, char *argv[]) {
    ros::init(argc,argv,"person_sub");
    ros::NodeHandle n_s;
    ros::Subscriber sub=n_s.subscribe("pub_person",10,message_process);
    ros::spin();
    return 0;
}
