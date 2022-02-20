;; Auto-generated. Do not edit!


(when (boundp 'pub_sub_node::My_person)
  (if (not (find-package "PUB_SUB_NODE"))
    (make-package "PUB_SUB_NODE"))
  (shadow 'My_person (find-package "PUB_SUB_NODE")))
(unless (find-package "PUB_SUB_NODE::MY_PERSON")
  (make-package "PUB_SUB_NODE::MY_PERSON"))

(in-package "ROS")
;;//! \htmlinclude My_person.msg.html


(defclass pub_sub_node::My_person
  :super ros::object
  :slots (_age _h ))

(defmethod pub_sub_node::My_person
  (:init
   (&key
    ((:age __age) 0)
    ((:h __h) 0.0)
    )
   (send-super :init)
   (setq _age (round __age))
   (setq _h (float __h))
   self)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:h
   (&optional __h)
   (if __h (setq _h __h)) _h)
  (:serialization-length
   ()
   (+
    ;; uint16 _age
    2
    ;; float32 _h
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _age
       (write-word _age s)
     ;; float32 _h
       (sys::poke _h (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _age
     (setq _age (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _h
     (setq _h (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pub_sub_node::My_person :md5sum-) "d159fe65d5f13b800fcb3f83f1fb93a6")
(setf (get pub_sub_node::My_person :datatype-) "pub_sub_node/My_person")
(setf (get pub_sub_node::My_person :definition-)
      "uint16 age
float32 h
")



(provide :pub_sub_node/My_person "d159fe65d5f13b800fcb3f83f1fb93a6")


