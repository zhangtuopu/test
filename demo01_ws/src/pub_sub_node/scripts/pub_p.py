#! /usr/bin/env python

import rospy
from std_msgs.msg import String

if __name__=="__main__":
    rospy.init_node('pub_python')
    pub=rospy.Publisher("pub_py_node",String,queue_size=10)
    rospy.sleep(3)
    msg=String()
    rate=rospy.Rate(1)
    n=0
    while not rospy.is_shutdown():
        n=n+1
        msg.data="hello "+str(n)
        pub.publish(msg)
        rate.sleep()


