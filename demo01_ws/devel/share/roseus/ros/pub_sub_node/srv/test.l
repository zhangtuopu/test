;; Auto-generated. Do not edit!


(when (boundp 'pub_sub_node::test)
  (if (not (find-package "PUB_SUB_NODE"))
    (make-package "PUB_SUB_NODE"))
  (shadow 'test (find-package "PUB_SUB_NODE")))
(unless (find-package "PUB_SUB_NODE::TEST")
  (make-package "PUB_SUB_NODE::TEST"))
(unless (find-package "PUB_SUB_NODE::TESTREQUEST")
  (make-package "PUB_SUB_NODE::TESTREQUEST"))
(unless (find-package "PUB_SUB_NODE::TESTRESPONSE")
  (make-package "PUB_SUB_NODE::TESTRESPONSE"))

(in-package "ROS")





(defclass pub_sub_node::testRequest
  :super ros::object
  :slots (_num1 _num2 ))

(defmethod pub_sub_node::testRequest
  (:init
   (&key
    ((:num1 __num1) 0)
    ((:num2 __num2) 0)
    )
   (send-super :init)
   (setq _num1 (round __num1))
   (setq _num2 (round __num2))
   self)
  (:num1
   (&optional __num1)
   (if __num1 (setq _num1 __num1)) _num1)
  (:num2
   (&optional __num2)
   (if __num2 (setq _num2 __num2)) _num2)
  (:serialization-length
   ()
   (+
    ;; int32 _num1
    4
    ;; int32 _num2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num1
       (write-long _num1 s)
     ;; int32 _num2
       (write-long _num2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num1
     (setq _num1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num2
     (setq _num2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass pub_sub_node::testResponse
  :super ros::object
  :slots (_sum ))

(defmethod pub_sub_node::testResponse
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int32 _sum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sum
       (write-long _sum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sum
     (setq _sum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass pub_sub_node::test
  :super ros::object
  :slots ())

(setf (get pub_sub_node::test :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get pub_sub_node::test :datatype-) "pub_sub_node/test")
(setf (get pub_sub_node::test :request) pub_sub_node::testRequest)
(setf (get pub_sub_node::test :response) pub_sub_node::testResponse)

(defmethod pub_sub_node::testRequest
  (:response () (instance pub_sub_node::testResponse :init)))

(setf (get pub_sub_node::testRequest :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get pub_sub_node::testRequest :datatype-) "pub_sub_node/testRequest")
(setf (get pub_sub_node::testRequest :definition-)
      "int32 num1
int32 num2
---
int32 sum
")

(setf (get pub_sub_node::testResponse :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get pub_sub_node::testResponse :datatype-) "pub_sub_node/testResponse")
(setf (get pub_sub_node::testResponse :definition-)
      "int32 num1
int32 num2
---
int32 sum
")



(provide :pub_sub_node/test "4781436a0c2affec8025955a6041e481")


