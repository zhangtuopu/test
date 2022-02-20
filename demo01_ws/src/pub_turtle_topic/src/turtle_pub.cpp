//
// Created by zhangtuopu on 2022/2/16.
//

#include "ros/ros.h"
#include "geometry_msgs/Twist.h"

int main(int argc, char *argv[]) {
    ros::init(argc,argv,"turtle_pub_v");
    ros::NodeHandle n_t;
    ros::Publisher pub=n_t.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel",1000);
    geometry_msgs::Twist msg;
    msg.linear.x=1.0;
    msg.linear.y=0.0;
    msg.linear.z=0.0;
    msg.angular.x=0.0;
    msg.angular.y=0.0;
    msg.angular.z=2.0;
    ros::Rate r(10);
    while(ros::ok())
    {
        pub.publish(msg);
        ros::spinOnce();
    }
    return 0;
}
