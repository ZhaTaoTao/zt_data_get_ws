;; Auto-generated. Do not edit!


(when (boundp 'fixposition_driver_ros1::WheelSensor)
  (if (not (find-package "FIXPOSITION_DRIVER_ROS1"))
    (make-package "FIXPOSITION_DRIVER_ROS1"))
  (shadow 'WheelSensor (find-package "FIXPOSITION_DRIVER_ROS1")))
(unless (find-package "FIXPOSITION_DRIVER_ROS1::WHEELSENSOR")
  (make-package "FIXPOSITION_DRIVER_ROS1::WHEELSENSOR"))

(in-package "ROS")
;;//! \htmlinclude WheelSensor.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass fixposition_driver_ros1::WheelSensor
  :super ros::object
  :slots (_header _location _vx _vy _vz _vx_valid _vy_valid _vz_valid ))

(defmethod fixposition_driver_ros1::WheelSensor
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:location __location) "")
    ((:vx __vx) 0)
    ((:vy __vy) 0)
    ((:vz __vz) 0)
    ((:vx_valid __vx_valid) nil)
    ((:vy_valid __vy_valid) nil)
    ((:vz_valid __vz_valid) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _location (string __location))
   (setq _vx (round __vx))
   (setq _vy (round __vy))
   (setq _vz (round __vz))
   (setq _vx_valid __vx_valid)
   (setq _vy_valid __vy_valid)
   (setq _vz_valid __vz_valid)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:location
   (&optional __location)
   (if __location (setq _location __location)) _location)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:vz
   (&optional __vz)
   (if __vz (setq _vz __vz)) _vz)
  (:vx_valid
   (&optional (__vx_valid :null))
   (if (not (eq __vx_valid :null)) (setq _vx_valid __vx_valid)) _vx_valid)
  (:vy_valid
   (&optional (__vy_valid :null))
   (if (not (eq __vy_valid :null)) (setq _vy_valid __vy_valid)) _vy_valid)
  (:vz_valid
   (&optional (__vz_valid :null))
   (if (not (eq __vz_valid :null)) (setq _vz_valid __vz_valid)) _vz_valid)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _location
    4 (length _location)
    ;; int32 _vx
    4
    ;; int32 _vy
    4
    ;; int32 _vz
    4
    ;; bool _vx_valid
    1
    ;; bool _vy_valid
    1
    ;; bool _vz_valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _location
       (write-long (length _location) s) (princ _location s)
     ;; int32 _vx
       (write-long _vx s)
     ;; int32 _vy
       (write-long _vy s)
     ;; int32 _vz
       (write-long _vz s)
     ;; bool _vx_valid
       (if _vx_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _vy_valid
       (if _vy_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _vz_valid
       (if _vz_valid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _location
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _location (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _vx
     (setq _vx (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _vy
     (setq _vy (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _vz
     (setq _vz (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _vx_valid
     (setq _vx_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _vy_valid
     (setq _vy_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _vz_valid
     (setq _vz_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get fixposition_driver_ros1::WheelSensor :md5sum-) "80080356d0f1e51e2dbb0fca7fd5dc02")
(setf (get fixposition_driver_ros1::WheelSensor :datatype-) "fixposition_driver_ros1/WheelSensor")
(setf (get fixposition_driver_ros1::WheelSensor :definition-)
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



(provide :fixposition_driver_ros1/WheelSensor "80080356d0f1e51e2dbb0fca7fd5dc02")


