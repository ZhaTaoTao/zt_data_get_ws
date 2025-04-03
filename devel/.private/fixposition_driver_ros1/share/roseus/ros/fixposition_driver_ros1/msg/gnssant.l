;; Auto-generated. Do not edit!


(when (boundp 'fixposition_driver_ros1::gnssant)
  (if (not (find-package "FIXPOSITION_DRIVER_ROS1"))
    (make-package "FIXPOSITION_DRIVER_ROS1"))
  (shadow 'gnssant (find-package "FIXPOSITION_DRIVER_ROS1")))
(unless (find-package "FIXPOSITION_DRIVER_ROS1::GNSSANT")
  (make-package "FIXPOSITION_DRIVER_ROS1::GNSSANT"))

(in-package "ROS")
;;//! \htmlinclude gnssant.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass fixposition_driver_ros1::gnssant
  :super ros::object
  :slots (_header _gnss1_state _gnss1_power _gnss1_age _gnss2_state _gnss2_power _gnss2_age ))

(defmethod fixposition_driver_ros1::gnssant
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:gnss1_state __gnss1_state) "")
    ((:gnss1_power __gnss1_power) "")
    ((:gnss1_age __gnss1_age) 0)
    ((:gnss2_state __gnss2_state) "")
    ((:gnss2_power __gnss2_power) "")
    ((:gnss2_age __gnss2_age) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _gnss1_state (string __gnss1_state))
   (setq _gnss1_power (string __gnss1_power))
   (setq _gnss1_age (round __gnss1_age))
   (setq _gnss2_state (string __gnss2_state))
   (setq _gnss2_power (string __gnss2_power))
   (setq _gnss2_age (round __gnss2_age))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:gnss1_state
   (&optional __gnss1_state)
   (if __gnss1_state (setq _gnss1_state __gnss1_state)) _gnss1_state)
  (:gnss1_power
   (&optional __gnss1_power)
   (if __gnss1_power (setq _gnss1_power __gnss1_power)) _gnss1_power)
  (:gnss1_age
   (&optional __gnss1_age)
   (if __gnss1_age (setq _gnss1_age __gnss1_age)) _gnss1_age)
  (:gnss2_state
   (&optional __gnss2_state)
   (if __gnss2_state (setq _gnss2_state __gnss2_state)) _gnss2_state)
  (:gnss2_power
   (&optional __gnss2_power)
   (if __gnss2_power (setq _gnss2_power __gnss2_power)) _gnss2_power)
  (:gnss2_age
   (&optional __gnss2_age)
   (if __gnss2_age (setq _gnss2_age __gnss2_age)) _gnss2_age)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _gnss1_state
    4 (length _gnss1_state)
    ;; string _gnss1_power
    4 (length _gnss1_power)
    ;; int32 _gnss1_age
    4
    ;; string _gnss2_state
    4 (length _gnss2_state)
    ;; string _gnss2_power
    4 (length _gnss2_power)
    ;; int32 _gnss2_age
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _gnss1_state
       (write-long (length _gnss1_state) s) (princ _gnss1_state s)
     ;; string _gnss1_power
       (write-long (length _gnss1_power) s) (princ _gnss1_power s)
     ;; int32 _gnss1_age
       (write-long _gnss1_age s)
     ;; string _gnss2_state
       (write-long (length _gnss2_state) s) (princ _gnss2_state s)
     ;; string _gnss2_power
       (write-long (length _gnss2_power) s) (princ _gnss2_power s)
     ;; int32 _gnss2_age
       (write-long _gnss2_age s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _gnss1_state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gnss1_state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _gnss1_power
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gnss1_power (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _gnss1_age
     (setq _gnss1_age (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _gnss2_state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gnss2_state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _gnss2_power
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gnss2_power (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _gnss2_age
     (setq _gnss2_age (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get fixposition_driver_ros1::gnssant :md5sum-) "3efa4edf5957d49615254580afca41bd")
(setf (get fixposition_driver_ros1::gnssant :datatype-) "fixposition_driver_ros1/gnssant")
(setf (get fixposition_driver_ros1::gnssant :definition-)
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
# Fixposition FP_A-GNSSANT Message
#
#
####################################################################################################

Header header
string gnss1_state   # GNSS1 antenna state
string gnss1_power   # GNSS1 antenna power
int32  gnss1_age     # Time since gnss1_state or gnss1_power information last changed
string gnss2_state   # GNSS2 antenna state
string gnss2_power   # GNSS2 antenna power
int32  gnss2_age     # Time since gnss2_state or gnss2_power information last changed

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



(provide :fixposition_driver_ros1/gnssant "3efa4edf5957d49615254580afca41bd")


