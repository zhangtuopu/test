#! /usr/bin/env python

import rospy
from pub_sub_node.srv import *
import sys

if __name__=="__main__":

    rospy.init_node("client_py")

    client=rospy.ServiceProxy("my_server_py",test)

    client.wait_for_service()

    req=testRequest()

    req.num1=int(sys.argv[1])
    req.num2=int(sys.argv[2])
    resp=client.call(req)
    rospy.loginfo("sum=%d",resp.sum)
