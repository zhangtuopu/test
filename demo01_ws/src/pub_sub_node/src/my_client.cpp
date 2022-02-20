//
// Created by zhangtuopu on 2022/2/16.
//

#include "ros/ros.h"
#include "pub_sub_node/test.h"

int main(int argc, char *argv[]) {
    if (argc!=3)
    {
        ROS_ERROR("Please input 2 nums");
        return 1;
    }
    ros::init(argc,argv,"test_client");
    ros::NodeHandle n_c;
    ros::ServiceClient client=n_c.serviceClient<pub_sub_node::test>("test1");

    ros::service::waitForService("test1");
    pub_sub_node::test ai;
    ai.request.num1= atoi(argv[1]);
    ai.request.num2=atoi(argv[2]);
    bool flag=client.call(ai);
    if (flag)
    {
        ROS_INFO("Success:%d",ai.response.sum);
    }
    else
    {
        ROS_ERROR("Fail.....");
        return 1;
    }
    return 0;
}