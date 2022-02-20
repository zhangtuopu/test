//
// Created by zhangtuopu on 2022/2/17.
//

#include "ros/ros.h"
#include "actionlib/server/simple_action_server.h"
#include "action_test/AddIntsAction.h"
typedef actionlib::SimpleActionServer<action_test::AddIntsAction> Server;

void cb(const action_test::AddIntsGoalConstPtr &goal,Server* server)
{
    int num=goal->num;
    ROS_INFO("target:%d",num);
    int result=0;
    action_test::AddIntsFeedback feedback;
    ros::Rate r(10);
    for (int i = 1; i <=num; ++i) {
        result+=i;
        feedback.progress_bar=i/(double)num;
        server->publishFeedback(feedback);
        r.sleep();
    }
    action_test::AddIntsResult rr;
    rr.result=result;
    server->setSucceeded(rr);
    ROS_INFO("last_result:%d",rr.result);
}
int main(int argc, char *argv[]) {
    ros::init(argc,argv,"AddInts_server");
    ros::NodeHandle nh;
    Server server(nh,"addInts",boost::bind(&cb,_1,&server),false);
    server.start();
    ros::spin();
    return 0;
}