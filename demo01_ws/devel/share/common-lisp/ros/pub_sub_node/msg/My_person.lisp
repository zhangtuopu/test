; Auto-generated. Do not edit!


(cl:in-package pub_sub_node-msg)


;//! \htmlinclude My_person.msg.html

(cl:defclass <My_person> (roslisp-msg-protocol:ros-message)
  ((age
    :reader age
    :initarg :age
    :type cl:fixnum
    :initform 0)
   (h
    :reader h
    :initarg :h
    :type cl:float
    :initform 0.0))
)

(cl:defclass My_person (<My_person>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <My_person>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'My_person)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pub_sub_node-msg:<My_person> is deprecated: use pub_sub_node-msg:My_person instead.")))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <My_person>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pub_sub_node-msg:age-val is deprecated.  Use pub_sub_node-msg:age instead.")
  (age m))

(cl:ensure-generic-function 'h-val :lambda-list '(m))
(cl:defmethod h-val ((m <My_person>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pub_sub_node-msg:h-val is deprecated.  Use pub_sub_node-msg:h instead.")
  (h m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <My_person>) ostream)
  "Serializes a message object of type '<My_person>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'age)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'h))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <My_person>) istream)
  "Deserializes a message object of type '<My_person>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'age)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'h) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<My_person>)))
  "Returns string type for a message object of type '<My_person>"
  "pub_sub_node/My_person")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'My_person)))
  "Returns string type for a message object of type 'My_person"
  "pub_sub_node/My_person")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<My_person>)))
  "Returns md5sum for a message object of type '<My_person>"
  "d159fe65d5f13b800fcb3f83f1fb93a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'My_person)))
  "Returns md5sum for a message object of type 'My_person"
  "d159fe65d5f13b800fcb3f83f1fb93a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<My_person>)))
  "Returns full string definition for message of type '<My_person>"
  (cl:format cl:nil "uint16 age~%float32 h~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'My_person)))
  "Returns full string definition for message of type 'My_person"
  (cl:format cl:nil "uint16 age~%float32 h~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <My_person>))
  (cl:+ 0
     2
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <My_person>))
  "Converts a ROS message object to a list"
  (cl:list 'My_person
    (cl:cons ':age (age msg))
    (cl:cons ':h (h msg))
))
