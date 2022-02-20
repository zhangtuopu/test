//
// Created by zhangtuopu on 2022/2/17.
//

#include "ros/ros.h"
#include "std_srvs/Empty.h"
int main(int argc, char *argv[]) {
    ros::init(argc,argv,"turtle_back");
    ros::NodeHandle nh;
    ros::Duration(3).sleep();
    int r,g,b;
    ros::param::get("/turtle_GUI/background_r",r);
    ros::param::get("/turtle_GUI/background_g",g);
    ros::param::get("/turtle_GUI/background_b",b);
    ROS_INFO("r=%d,g=%d,b=%d",r,g,b);

    ros::param::set("/turtle_GUI/background_r",0);
    ros::param::set("/turtle_GUI/background_g",0);
    ros::param::set("/turtle_GUI/background_b",0);
    ros::service::waitForService("clear");
    ros::ServiceClient clearClient
            = nh.serviceClient<std_srvs::Empty>("/clear");
    std_srvs::Empty srv;
    clearClient.call(srv);
    return 0;
}