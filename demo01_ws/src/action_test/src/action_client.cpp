//
// Created by zhangtuopu on 2022/2/17.
//

#include "ros/ros.h"
#include "action_test/AddIntsAction.h"
#include "actionlib/client/simple_action_client.h"

typedef actionlib::SimpleActionClient<action_test::AddIntsAction> Client;
void done_cb(const actionlib::SimpleClientGoalState &state,const action_test::AddIntsResultConstPtr &result)
{
    if (state.state_==state.SUCCEEDED)
    {
        ROS_INFO("result:%d",result->result);
    }
    else
    {
        ROS_INFO("Fail!");
    }
}
void active_cb()
{
    ROS_INFO("started...");
}
void feed_back_cb(const action_test::AddIntsFeedbackConstPtr &feedback)
{
    ROS_INFO("processing:%.2f",feedback->progress_bar);
}

int main(int argc, char *argv[]) {
    ros::init(argc,argv,"action_client");
    ros::NodeHandle nh;
    Client client(nh,"addInts",true);
    client.waitForServer();
    action_test::AddIntsGoal goal;
    goal.num=10;
    client.sendGoal(goal,&done_cb,&active_cb,&feed_back_cb);
    ros::spin();
    return 0;
}