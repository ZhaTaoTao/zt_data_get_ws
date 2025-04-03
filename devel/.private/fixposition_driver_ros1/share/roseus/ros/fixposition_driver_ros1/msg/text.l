;; Auto-generated. Do not edit!


(when (boundp 'fixposition_driver_ros1::text)
  (if (not (find-package "FIXPOSITION_DRIVER_ROS1"))
    (make-package "FIXPOSITION_DRIVER_ROS1"))
  (shadow 'text (find-package "FIXPOSITION_DRIVER_ROS1")))
(unless (find-package "FIXPOSITION_DRIVER_ROS1::TEXT")
  (make-package "FIXPOSITION_DRIVER_ROS1::TEXT"))

(in-package "ROS")
;;//! \htmlinclude text.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass fixposition_driver_ros1::text
  :super ros::object
  :slots (_header _level _text ))

(defmethod fixposition_driver_ros1::text
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:level __level) "")
    ((:text __text) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _level (string __level))
   (setq _text (string __text))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:level
   (&optional __level)
   (if __level (setq _level __level)) _level)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _level
    4 (length _level)
    ;; string _text
    4 (length _text)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _level
       (write-long (length _level) s) (princ _level s)
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _level
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _level (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get fixposition_driver_ros1::text :md5sum-) "5c0e68997bf8d1624e4bb482e27921b6")
(setf (get fixposition_driver_ros1::text :datatype-) "fixposition_driver_ros1/text")
(setf (get fixposition_driver_ros1::text :definition-)
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
# Fixposition FP_A-TEXT Message
#
#
####################################################################################################

Header header
string level   # One of: INFO, WARNING, ERROR, DEBUG
string text    # Text

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



(provide :fixposition_driver_ros1/text "5c0e68997bf8d1624e4bb482e27921b6")


