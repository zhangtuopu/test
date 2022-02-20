#! /usr/bin/env python

import rospy
from pub_sub_node.srv import test,testRequest,testResponse
def doReq(req):
    sum=req.num1+req.num2
    rospy.loginfo("recived: num1=%d,num2=%d",req.num1,req.num2)
    resp=testResponse(sum)
    return resp
if __name__=="__main__":
    rospy.init_node("server_py")
    server=rospy.Service("my_server_py",test,doReq)
    rospy.spin()