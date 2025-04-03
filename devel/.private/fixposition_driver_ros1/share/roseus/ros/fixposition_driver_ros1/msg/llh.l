;; Auto-generated. Do not edit!


(when (boundp 'fixposition_driver_ros1::llh)
  (if (not (find-package "FIXPOSITION_DRIVER_ROS1"))
    (make-package "FIXPOSITION_DRIVER_ROS1"))
  (shadow 'llh (find-package "FIXPOSITION_DRIVER_ROS1")))
(unless (find-package "FIXPOSITION_DRIVER_ROS1::LLH")
  (make-package "FIXPOSITION_DRIVER_ROS1::LLH"))

(in-package "ROS")
;;//! \htmlinclude llh.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass fixposition_driver_ros1::llh
  :super ros::object
  :slots (_header _pose_frame _position _covariance ))

(defmethod fixposition_driver_ros1::llh
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pose_frame __pose_frame) "")
    ((:position __position) (instance geometry_msgs::Vector3 :init))
    ((:covariance __covariance) (make-array 9 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _pose_frame (string __pose_frame))
   (setq _position __position)
   (setq _covariance __covariance)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pose_frame
   (&optional __pose_frame)
   (if __pose_frame (setq _pose_frame __pose_frame)) _pose_frame)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:covariance
   (&optional __covariance)
   (if __covariance (setq _covariance __covariance)) _covariance)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _pose_frame
    4 (length _pose_frame)
    ;; geometry_msgs/Vector3 _position
    (send _position :serialization-length)
    ;; float64[9] _covariance
    (* 8    9)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _pose_frame
       (write-long (length _pose_frame) s) (princ _pose_frame s)
     ;; geometry_msgs/Vector3 _position
       (send _position :serialize s)
     ;; float64[9] _covariance
     (dotimes (i 9)
       (sys::poke (elt _covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _pose_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pose_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Vector3 _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float64[9] _covariance
   (dotimes (i (length _covariance))
     (setf (elt _covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get fixposition_driver_ros1::llh :md5sum-) "8e7bbdcafaeb2f9efbe4b2cb41c30f25")
(setf (get fixposition_driver_ros1::llh :datatype-) "fixposition_driver_ros1/llh")
(setf (get fixposition_driver_ros1::llh :definition-)
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
# Fixposition FP_A-LLH Message
#
#
####################################################################################################

Header header
string pose_frame                # frame of the pose values [pose, quaternion]
geometry_msgs/Vector3 position   # LLH position (latitude, longitude, height)
float64[9] covariance           # Position covariance in ENU

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



(provide :fixposition_driver_ros1/llh "8e7bbdcafaeb2f9efbe4b2cb41c30f25")


