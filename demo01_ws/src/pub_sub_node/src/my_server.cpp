//
// Created by zhangtuopu on 2022/2/16.
//

#include "ros/ros.h"
#include "pub_sub_node/test.h"

bool doReq(pub_sub_node::test::Request& req,pub_sub_node::test::Response& resp)
{
    int num1=req.num1;
    int num2=req.num2;
    ROS_INFO("recived num1=%d,num2=%d",num1,num2);
    if (num1<0 || num2 <0)
    {
        ROS_ERROR("ERROR");
        return false;
    }
    resp.sum=num1+num2;
    return true;
}

int main(int argc, char *argv[]) {
    ros::init(argc,argv,"test_server");

    ros::NodeHandle n_s;
    ros::ServiceServer server=n_s.advertiseService("test1",doReq);
    ROS_INFO("The server is started");
    ros::spin();
    return 0;
}
