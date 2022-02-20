#! /usr/bin/env python

import rospy
from std_msgs.msg import String

def dataprocess(msg):
    rospy.loginfo(msg.data)

if __name__=="__main__":
    rospy.init_node("sub_python")
    sub=rospy.Subscriber("pub_message",String,dataprocess,queue_size=10)

    rospy.spin()

