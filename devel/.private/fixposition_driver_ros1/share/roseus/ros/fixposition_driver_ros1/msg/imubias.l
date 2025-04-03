;; Auto-generated. Do not edit!


(when (boundp 'fixposition_driver_ros1::imubias)
  (if (not (find-package "FIXPOSITION_DRIVER_ROS1"))
    (make-package "FIXPOSITION_DRIVER_ROS1"))
  (shadow 'imubias (find-package "FIXPOSITION_DRIVER_ROS1")))
(unless (find-package "FIXPOSITION_DRIVER_ROS1::IMUBIAS")
  (make-package "FIXPOSITION_DRIVER_ROS1::IMUBIAS"))

(in-package "ROS")
;;//! \htmlinclude imubias.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass fixposition_driver_ros1::imubias
  :super ros::object
  :slots (_header _fusion_imu _imu_status _imu_noise _imu_conv _bias_acc _bias_gyr _bias_cov_acc _bias_cov_gyr ))

(defmethod fixposition_driver_ros1::imubias
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:fusion_imu __fusion_imu) 0)
    ((:imu_status __imu_status) 0)
    ((:imu_noise __imu_noise) 0)
    ((:imu_conv __imu_conv) 0)
    ((:bias_acc __bias_acc) (instance geometry_msgs::Vector3 :init))
    ((:bias_gyr __bias_gyr) (instance geometry_msgs::Vector3 :init))
    ((:bias_cov_acc __bias_cov_acc) (instance geometry_msgs::Vector3 :init))
    ((:bias_cov_gyr __bias_cov_gyr) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _fusion_imu (round __fusion_imu))
   (setq _imu_status (round __imu_status))
   (setq _imu_noise (round __imu_noise))
   (setq _imu_conv (round __imu_conv))
   (setq _bias_acc __bias_acc)
   (setq _bias_gyr __bias_gyr)
   (setq _bias_cov_acc __bias_cov_acc)
   (setq _bias_cov_gyr __bias_cov_gyr)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:fusion_imu
   (&optional __fusion_imu)
   (if __fusion_imu (setq _fusion_imu __fusion_imu)) _fusion_imu)
  (:imu_status
   (&optional __imu_status)
   (if __imu_status (setq _imu_status __imu_status)) _imu_status)
  (:imu_noise
   (&optional __imu_noise)
   (if __imu_noise (setq _imu_noise __imu_noise)) _imu_noise)
  (:imu_conv
   (&optional __imu_conv)
   (if __imu_conv (setq _imu_conv __imu_conv)) _imu_conv)
  (:bias_acc
   (&rest __bias_acc)
   (if (keywordp (car __bias_acc))
       (send* _bias_acc __bias_acc)
     (progn
       (if __bias_acc (setq _bias_acc (car __bias_acc)))
       _bias_acc)))
  (:bias_gyr
   (&rest __bias_gyr)
   (if (keywordp (car __bias_gyr))
       (send* _bias_gyr __bias_gyr)
     (progn
       (if __bias_gyr (setq _bias_gyr (car __bias_gyr)))
       _bias_gyr)))
  (:bias_cov_acc
   (&rest __bias_cov_acc)
   (if (keywordp (car __bias_cov_acc))
       (send* _bias_cov_acc __bias_cov_acc)
     (progn
       (if __bias_cov_acc (setq _bias_cov_acc (car __bias_cov_acc)))
       _bias_cov_acc)))
  (:bias_cov_gyr
   (&rest __bias_cov_gyr)
   (if (keywordp (car __bias_cov_gyr))
       (send* _bias_cov_gyr __bias_cov_gyr)
     (progn
       (if __bias_cov_gyr (setq _bias_cov_gyr (car __bias_cov_gyr)))
       _bias_cov_gyr)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int16 _fusion_imu
    2
    ;; int16 _imu_status
    2
    ;; int16 _imu_noise
    2
    ;; int16 _imu_conv
    2
    ;; geometry_msgs/Vector3 _bias_acc
    (send _bias_acc :serialization-length)
    ;; geometry_msgs/Vector3 _bias_gyr
    (send _bias_gyr :serialization-length)
    ;; geometry_msgs/Vector3 _bias_cov_acc
    (send _bias_cov_acc :serialization-length)
    ;; geometry_msgs/Vector3 _bias_cov_gyr
    (send _bias_cov_gyr :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int16 _fusion_imu
       (write-word _fusion_imu s)
     ;; int16 _imu_status
       (write-word _imu_status s)
     ;; int16 _imu_noise
       (write-word _imu_noise s)
     ;; int16 _imu_conv
       (write-word _imu_conv s)
     ;; geometry_msgs/Vector3 _bias_acc
       (send _bias_acc :serialize s)
     ;; geometry_msgs/Vector3 _bias_gyr
       (send _bias_gyr :serialize s)
     ;; geometry_msgs/Vector3 _bias_cov_acc
       (send _bias_cov_acc :serialize s)
     ;; geometry_msgs/Vector3 _bias_cov_gyr
       (send _bias_cov_gyr :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int16 _fusion_imu
     (setq _fusion_imu (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _imu_status
     (setq _imu_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _imu_noise
     (setq _imu_noise (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _imu_conv
     (setq _imu_conv (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; geometry_msgs/Vector3 _bias_acc
     (send _bias_acc :deserialize buf ptr-) (incf ptr- (send _bias_acc :serialization-length))
   ;; geometry_msgs/Vector3 _bias_gyr
     (send _bias_gyr :deserialize buf ptr-) (incf ptr- (send _bias_gyr :serialization-length))
   ;; geometry_msgs/Vector3 _bias_cov_acc
     (send _bias_cov_acc :deserialize buf ptr-) (incf ptr- (send _bias_cov_acc :serialization-length))
   ;; geometry_msgs/Vector3 _bias_cov_gyr
     (send _bias_cov_gyr :deserialize buf ptr-) (incf ptr- (send _bias_cov_gyr :serialization-length))
   ;;
   self)
  )

(setf (get fixposition_driver_ros1::imubias :md5sum-) "35ce34652f0847b6fbe7e55097d74211")
(setf (get fixposition_driver_ros1::imubias :datatype-) "fixposition_driver_ros1/imubias")
(setf (get fixposition_driver_ros1::imubias :definition-)
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
# Fixposition FP_A-IMUBIAS Message
#
#
####################################################################################################

Header header
int16 fusion_imu                     # Fusion measurement status: IMU (see below)
int16 imu_status                     # IMU bias status (see below)
int16 imu_noise                      # IMU variance status (see below)
int16 imu_conv                       # IMU convergence status (see below)
geometry_msgs/Vector3 bias_acc       # Accelerometer bias
geometry_msgs/Vector3 bias_gyr       # Gyroscope bias
geometry_msgs/Vector3 bias_cov_acc   # Accelerometer bias covariance
geometry_msgs/Vector3 bias_cov_gyr   # Gyroscope bias covariance


# Fusion measurement status (fusion_imu)
#
# | Value | Description        |
# |-------|--------------------|
# |  null | Info not available |
# |   0   | Not used           |
# |   1   | Used               |
# |   2   | Degraded           |


# IMU bias status (imu_status)
#
# | Value | Description        |
# |-------|--------------------|
# |  null | Info not available |
# |   0   | Not converged      |
# |   1   | Warmstarted        |
# |   2   | Rough convergence  |
# |   3   | Fine convergence   |


# IMU variance (imu_noise)
#
# | Value | Description        |
# |-------|--------------------|
# |  null | Info not available |
# |   0   | Reserved           |
# |   1   | Low noise          |
# |   2   | Medium noise       |
# |   3   | High noise         |
# | 4...7 | Reserved           |


# IMU accelerometer and gyroscope convergence (imu_conv)
#
# | Value | Description                      |
# |-------|----------------------------------|
# |  null | Info not available               |
# |   0   | Awaiting Fusion                  |
# |   1   | Awaiting IMU measurements        |
# |   2   | Insufficient global measurements |
# |   3   | Insufficient motion              |
# |   4   | Converging                       |
# | 5...6 | Reserved                         |
# |   7   | Idle                             |
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



(provide :fixposition_driver_ros1/imubias "35ce34652f0847b6fbe7e55097d74211")


