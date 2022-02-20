; Auto-generated. Do not edit!


(cl:in-package pub_sub_node-srv)


;//! \htmlinclude test-request.msg.html

(cl:defclass <test-request> (roslisp-msg-protocol:ros-message)
  ((num1
    :reader num1
    :initarg :num1
    :type cl:integer
    :initform 0)
   (num2
    :reader num2
    :initarg :num2
    :type cl:integer
    :initform 0))
)

(cl:defclass test-request (<test-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <test-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'test-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pub_sub_node-srv:<test-request> is deprecated: use pub_sub_node-srv:test-request instead.")))

(cl:ensure-generic-function 'num1-val :lambda-list '(m))
(cl:defmethod num1-val ((m <test-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pub_sub_node-srv:num1-val is deprecated.  Use pub_sub_node-srv:num1 instead.")
  (num1 m))

(cl:ensure-generic-function 'num2-val :lambda-list '(m))
(cl:defmethod num2-val ((m <test-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pub_sub_node-srv:num2-val is deprecated.  Use pub_sub_node-srv:num2 instead.")
  (num2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <test-request>) ostream)
  "Serializes a message object of type '<test-request>"
  (cl:let* ((signed (cl:slot-value msg 'num1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <test-request>) istream)
  "Deserializes a message object of type '<test-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<test-request>)))
  "Returns string type for a service object of type '<test-request>"
  "pub_sub_node/testRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'test-request)))
  "Returns string type for a service object of type 'test-request"
  "pub_sub_node/testRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<test-request>)))
  "Returns md5sum for a message object of type '<test-request>"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'test-request)))
  "Returns md5sum for a message object of type 'test-request"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<test-request>)))
  "Returns full string definition for message of type '<test-request>"
  (cl:format cl:nil "int32 num1~%int32 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'test-request)))
  "Returns full string definition for message of type 'test-request"
  (cl:format cl:nil "int32 num1~%int32 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <test-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <test-request>))
  "Converts a ROS message object to a list"
  (cl:list 'test-request
    (cl:cons ':num1 (num1 msg))
    (cl:cons ':num2 (num2 msg))
))
;//! \htmlinclude test-response.msg.html

(cl:defclass <test-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass test-response (<test-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <test-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'test-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pub_sub_node-srv:<test-response> is deprecated: use pub_sub_node-srv:test-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <test-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pub_sub_node-srv:sum-val is deprecated.  Use pub_sub_node-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <test-response>) ostream)
  "Serializes a message object of type '<test-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <test-response>) istream)
  "Deserializes a message object of type '<test-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<test-response>)))
  "Returns string type for a service object of type '<test-response>"
  "pub_sub_node/testResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'test-response)))
  "Returns string type for a service object of type 'test-response"
  "pub_sub_node/testResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<test-response>)))
  "Returns md5sum for a message object of type '<test-response>"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'test-response)))
  "Returns md5sum for a message object of type 'test-response"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<test-response>)))
  "Returns full string definition for message of type '<test-response>"
  (cl:format cl:nil "int32 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'test-response)))
  "Returns full string definition for message of type 'test-response"
  (cl:format cl:nil "int32 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <test-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <test-response>))
  "Converts a ROS message object to a list"
  (cl:list 'test-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'test)))
  'test-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'test)))
  'test-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'test)))
  "Returns string type for a service object of type '<test>"
  "pub_sub_node/test")