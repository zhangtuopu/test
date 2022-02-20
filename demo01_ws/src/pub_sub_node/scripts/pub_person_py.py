#! /usr/bin/env python

import rospy
from pub_sub_node.msg import Person

if __name__=="__main__":
    rospy.init_node("pub_py")
    pub=rospy.Publisher("pub_person_py",Person,queue_size=10)
    p=Person();
    p.name="zhangsan"
    p.age=20
    p.height=173.3
    rate=rospy.Rate(1)
    rospy.sleep(3)
    while not rospy.is_shutdown():
        p.age+=1
        pub.publish(p)
        rate.sleep()
