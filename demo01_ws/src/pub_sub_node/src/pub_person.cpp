//
// Created by zhangtuopu on 2022/2/15.
//

#include "ros/ros.h"
#include "pub_sub_node/Person.h"

int main(int argc, char *argv[]) {
    setlocale(LC_ALL,"");
    ros::init(argc,argv,"person_pub");
    ros::NodeHandle n_p;
    ros::Publisher pub=n_p.advertise<pub_sub_node::Person>("pub_person",10);
    pub_sub_node::Person p;
    p.name="zhangsan";
    p.age=20;
    p.height=173.3;
    ros::Rate rate(1);
    ros::Duration(3).sleep();
    while(ros::ok())
    {
        p.age+=1;
        pub.publish(p);
        ROS_INFO("publish:%s,%d,%f",p.name.c_str(),p.age,p.height);
        rate.sleep();
        ros::spinOnce();
    }
    return 0;
}