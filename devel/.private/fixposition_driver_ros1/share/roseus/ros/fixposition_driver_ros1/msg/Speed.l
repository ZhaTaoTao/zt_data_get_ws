;; Auto-generated. Do not edit!


(when (boundp 'fixposition_driver_ros1::Speed)
  (if (not (find-package "FIXPOSITION_DRIVER_ROS1"))
    (make-package "FIXPOSITION_DRIVER_ROS1"))
  (shadow 'Speed (find-package "FIXPOSITION_DRIVER_ROS1")))
(unless (find-package "FIXPOSITION_DRIVER_ROS1::SPEED")
  (make-package "FIXPOSITION_DRIVER_ROS1::SPEED"))

(in-package "ROS")
;;//! \htmlinclude Speed.msg.html


(defclass fixposition_driver_ros1::Speed
  :super ros::object
  :slots (_sensors ))

(defmethod fixposition_driver_ros1::Speed
  (:init
   (&key
    ((:sensors __sensors) ())
    )
   (send-super :init)
   (setq _sensors __sensors)
   self)
  (:sensors
   (&rest __sensors)
   (if (keywordp (car __sensors))
       (send* _sensors __sensors)
     (progn
       (if __sensors (setq _sensors (car __sensors)))
       _sensors)))
  (:serialization-length
   ()
   (+
    ;; fixposition_driver_ros1/WheelSensor[] _sensors
    (apply #'+ (send-all _sensors :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; fixposition_driver_ros1/WheelSensor[] _sensors
     (write-long (length _sensors) s)
     (dolist (elem _sensors)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; fixposition_driver_ros1/WheelSensor[] _sensors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sensors (let (r) (dotimes (i n) (push (instance fixposition_driver_ros1::WheelSensor :init) r)) r))
     (dolist (elem- _sensors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get fixposition_driver_ros1::Speed :md5sum-) "c35c230ca1b330732decce9c593d3ae9")
(setf (get fixposition_driver_ros1::Speed :datatype-) "fixposition_driver_ros1/Speed")
(setf (get fixposition_driver_ros1::Speed :definition-)
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
# Wheel speed input to Fixposition ROS Driver
#
#
####################################################################################################

# Velocity values for one or several WheelSensors
fixposition_driver_ros1/WheelSensor[] sensors

================================================================================
MSG: fixposition_driver_ros1/WheelSensor
####################################################################################################
#
#    Copyright (c) 2023  ___     ___
#                       \\\\  \\\\  /  /
#                        \\\\  \\\\/  /
#                         /  /\\\\  \\\\
#                        /__/  \\\\__\\\\  Fixposition AG
#
####################################################################################################
#
# Individual wheelspeed measurement
#
#
####################################################################################################
# Standard metadata
std_msgs/Header header

# Location of the wheelspeed measurement (one of: RC, FR, FL, RR, RL)
string location

# Velocity values in [mm/s] as integer 32bit
int32 vx
int32 vy
int32 vz

# Velocity validity
bool vx_valid
bool vy_valid
bool vz_valid

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



(provide :fixposition_driver_ros1/Speed "c35c230ca1b330732decce9c593d3ae9")


