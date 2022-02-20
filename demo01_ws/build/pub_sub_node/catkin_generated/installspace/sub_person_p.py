#!/usr/bin/env python2

import rospy
from pub_sub_node.msg import Person

def data_process(msg):
    rospy.loginfo("%s,%d,%f" , msg.name,msg.age,msg.height)
if __name__=="__main__":
    rospy.init_node("sub_py")
    sub=rospy.Subscriber("pub_person_py",Person,callback=data_process,queue_size=10)
    rospy.spin()