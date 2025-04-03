;; Auto-generated. Do not edit!


(when (boundp 'fixposition_driver_ros1::eoe)
  (if (not (find-package "FIXPOSITION_DRIVER_ROS1"))
    (make-package "FIXPOSITION_DRIVER_ROS1"))
  (shadow 'eoe (find-package "FIXPOSITION_DRIVER_ROS1")))
(unless (find-package "FIXPOSITION_DRIVER_ROS1::EOE")
  (make-package "FIXPOSITION_DRIVER_ROS1::EOE"))

(in-package "ROS")
;;//! \htmlinclude eoe.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass fixposition_driver_ros1::eoe
  :super ros::object
  :slots (_header _epoch ))

(defmethod fixposition_driver_ros1::eoe
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:epoch __epoch) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _epoch (string __epoch))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:epoch
   (&optional __epoch)
   (if __epoch (setq _epoch __epoch)) _epoch)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _epoch
    4 (length _epoch)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _epoch
       (write-long (length _epoch) s) (princ _epoch s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _epoch
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _epoch (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get fixposition_driver_ros1::eoe :md5sum-) "3d96e79f96082138c765108d4b32fdf5")
(setf (get fixposition_driver_ros1::eoe :datatype-) "fixposition_driver_ros1/eoe")
(setf (get fixposition_driver_ros1::eoe :definition-)
      "####################################################################################################
#
#    Copyright (c) 2023  ___     ___
#                       \\\\  \\\\  /  /
#                        \\\\  \\\\/  /
#                         /  /\\\\  \\\\
#                        /__/  \\\\__\\\\  Fixposition AG
#
####################################################################################################
#
# Fixposition FP_A-EOE Message
#
#
####################################################################################################

Header header
string epoch   # Indicates which epoch ended (FUSION, GNSS, GNSS1 or GNSS2)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :fixposition_driver_ros1/eoe "3d96e79f96082138c765108d4b32fdf5")


