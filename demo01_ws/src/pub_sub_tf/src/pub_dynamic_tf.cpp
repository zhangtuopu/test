//
// Created by zhangtuopu on 2022/2/17.
//

#include "ros/ros.h"
#include "turtlesim/Pose.h"
#include "tf2_ros/transform_broadcaster.h"
#include "geometry_msgs/TransformStamped.h"
#include "tf2/LinearMath/Quaternion.h"

void doPose(const turtlesim::Pose::ConstPtr &msg)
{
    static tf2_ros::TransformBroadcaster broadcaster;
    geometry_msgs::TransformStamped tfs;
    tfs.header.frame_id="world";
    tfs.header.stamp=ros::Time::now();
    tfs.child_frame_id="turtle1";
    tfs.transform.translation.x=msg->x;
    tfs.transform.translation.y=msg->y;
    tfs.transform.translation.z=0;
    tf2::Quaternion qtn;
    qtn.setRPY(0,0,msg->theta);
    tfs.transform.rotation.x=qtn.getX();
    tfs.transform.rotation.y=qtn.getY();
    tfs.transform.rotation.z=qtn.getZ();
    tfs.transform.rotation.w=qtn.getW();
    broadcaster.sendTransform(tfs);
}


int main(int argc, char *argv[]) {
    ros::init(argc,argv,"pub_dynamic_tf");

    ros::NodeHandle nh;
    ros::Subscriber sub=nh.subscribe("/turtle1/pose",1000,doPose);
    ros::spin();
    return 0;
}