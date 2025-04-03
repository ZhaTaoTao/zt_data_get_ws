;; Auto-generated. Do not edit!


(when (boundp 'fixposition_driver_ros1::CovWarn)
  (if (not (find-package "FIXPOSITION_DRIVER_ROS1"))
    (make-package "FIXPOSITION_DRIVER_ROS1"))
  (shadow 'CovWarn (find-package "FIXPOSITION_DRIVER_ROS1")))
(unless (find-package "FIXPOSITION_DRIVER_ROS1::COVWARN")
  (make-package "FIXPOSITION_DRIVER_ROS1::COVWARN"))

(in-package "ROS")
;;//! \htmlinclude CovWarn.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass fixposition_driver_ros1::CovWarn
  :super ros::object
  :slots (_header _jump _covariance ))

(defmethod fixposition_driver_ros1::CovWarn
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:jump __jump) (instance geometry_msgs::Vector3 :init))
    ((:covariance __covariance) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _jump __jump)
   (setq _covariance __covariance)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:jump
   (&rest __jump)
   (if (keywordp (car __jump))
       (send* _jump __jump)
     (progn
       (if __jump (setq _jump (car __jump)))
       _jump)))
  (:covariance
   (&rest __covariance)
   (if (keywordp (car __covariance))
       (send* _covariance __covariance)
     (progn
       (if __covariance (setq _covariance (car __covariance)))
       _covariance)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Vector3 _jump
    (send _jump :serialization-length)
    ;; geometry_msgs/Vector3 _covariance
    (send _covariance :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Vector3 _jump
       (send _jump :serialize s)
     ;; geometry_msgs/Vector3 _covariance
       (send _covariance :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Vector3 _jump
     (send _jump :deserialize buf ptr-) (incf ptr- (send _jump :serialization-length))
   ;; geometry_msgs/Vector3 _covariance
     (send _covariance :deserialize buf ptr-) (incf ptr- (send _covariance :serialization-length))
   ;;
   self)
  )

(setf (get fixposition_driver_ros1::CovWarn :md5sum-) "de2143400b8bddaa70419e57cc765055")
(setf (get fixposition_driver_ros1::CovWarn :datatype-) "fixposition_driver_ros1/CovWarn")
(setf (get fixposition_driver_ros1::CovWarn :definition-)
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
# Fixposition Covariance Warning Message
#
#
####################################################################################################

Header header
geometry_msgs/Vector3 jump         # Position change
geometry_msgs/Vector3 covariance   # Covariance

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

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :fixposition_driver_ros1/CovWarn "de2143400b8bddaa70419e57cc765055")


