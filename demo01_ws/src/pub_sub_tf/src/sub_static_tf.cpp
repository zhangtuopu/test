//
// Created by zhangtuopu on 2022/2/17.
//

#include "ros/ros.h"
#include "tf2_ros/transform_listener.h"
#include "tf2_ros/buffer.h"
#include "geometry_msgs/PointStamped.h"
#include "tf2_geometry_msgs/tf2_geometry_msgs.h"

int main(int argc, char *argv[]) {
    ros::init(argc,argv,"sub_tf");
    ros::NodeHandle nh;
    ros::Publisher pub=nh.advertise<geometry_msgs::PointStamped>("object_point",1);
    tf2_ros::Buffer buffer;
    tf2_ros::TransformListener listener(buffer);
    ros::Rate r(1);
    while (ros::ok())
    {
        geometry_msgs::PointStamped point_laser;
        point_laser.header.frame_id="laser";
        point_laser.header.stamp=ros::Time::now();
        point_laser.point.x=0.2;
        point_laser.point.y=0.3;
        point_laser.point.z=0;
        try {
            geometry_msgs::PointStamped point_base;
            pub.publish(point_laser);
            point_base=buffer.transform(point_laser,"base_frame");
            ROS_INFO("After transform: (%.2f,%.2f,%.2f),refer_frame:%s",point_base.point.x,point_base.point.y,point_base.point.z,point_base.header.frame_id.c_str());

        }
        catch (const std::exception &e){
            ROS_INFO("Error");
        }
        r.sleep();
        ros::spinOnce();
    }
    return 0;
}