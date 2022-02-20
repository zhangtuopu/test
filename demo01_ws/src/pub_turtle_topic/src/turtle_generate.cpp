//
// Created by zhangtuopu on 2022/2/17.
//
#include "ros/ros.h"
#include "turtlesim/Spawn.h"

int main(int argc, char *argv[]) {
    ros::init(argc,argv,"generate_my_turtle");
    ros::NodeHandle n_g;
    ros::ServiceClient client=n_g.serviceClient<turtlesim::Spawn>("/spawn");
    ros::service::waitForService("/spawn");
    turtlesim::Spawn spawn;
    spawn.request.name="my_turtle";
    spawn.request.theta=1.57;
    spawn.request.x=1;
    spawn.request.y=2;
    bool flag=client.call(spawn);
    if (flag)
    {
        ROS_INFO("Success!");
    }
    else
    {
        ROS_INFO("Fail!!");
    }
    return 0;
}
