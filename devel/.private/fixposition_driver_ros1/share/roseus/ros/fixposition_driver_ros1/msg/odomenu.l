;; Auto-generated. Do not edit!


(when (boundp 'fixposition_driver_ros1::odomenu)
  (if (not (find-package "FIXPOSITION_DRIVER_ROS1"))
    (make-package "FIXPOSITION_DRIVER_ROS1"))
  (shadow 'odomenu (find-package "FIXPOSITION_DRIVER_ROS1")))
(unless (find-package "FIXPOSITION_DRIVER_ROS1::ODOMENU")
  (make-package "FIXPOSITION_DRIVER_ROS1::ODOMENU"))

(in-package "ROS")
;;//! \htmlinclude odomenu.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass fixposition_driver_ros1::odomenu
  :super ros::object
  :slots (_header _pose_frame _kin_frame _pose _velocity _acceleration _fusion_status _imu_bias_status _gnss1_status _gnss2_status _wheelspeed_status ))

(defmethod fixposition_driver_ros1::odomenu
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pose_frame __pose_frame) "")
    ((:kin_frame __kin_frame) "")
    ((:pose __pose) (instance geometry_msgs::PoseWithCovariance :init))
    ((:velocity __velocity) (instance geometry_msgs::TwistWithCovariance :init))
    ((:acceleration __acceleration) (instance geometry_msgs::Vector3 :init))
    ((:fusion_status __fusion_status) 0)
    ((:imu_bias_status __imu_bias_status) 0)
    ((:gnss1_status __gnss1_status) 0)
    ((:gnss2_status __gnss2_status) 0)
    ((:wheelspeed_status __wheelspeed_status) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _pose_frame (string __pose_frame))
   (setq _kin_frame (string __kin_frame))
   (setq _pose __pose)
   (setq _velocity __velocity)
   (setq _acceleration __acceleration)
   (setq _fusion_status (round __fusion_status))
   (setq _imu_bias_status (round __imu_bias_status))
   (setq _gnss1_status (round __gnss1_status))
   (setq _gnss2_status (round __gnss2_status))
   (setq _wheelspeed_status (round __wheelspeed_status))
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
  (:kin_frame
   (&optional __kin_frame)
   (if __kin_frame (setq _kin_frame __kin_frame)) _kin_frame)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:acceleration
   (&rest __acceleration)
   (if (keywordp (car __acceleration))
       (send* _acceleration __acceleration)
     (progn
       (if __acceleration (setq _acceleration (car __acceleration)))
       _acceleration)))
  (:fusion_status
   (&optional __fusion_status)
   (if __fusion_status (setq _fusion_status __fusion_status)) _fusion_status)
  (:imu_bias_status
   (&optional __imu_bias_status)
   (if __imu_bias_status (setq _imu_bias_status __imu_bias_status)) _imu_bias_status)
  (:gnss1_status
   (&optional __gnss1_status)
   (if __gnss1_status (setq _gnss1_status __gnss1_status)) _gnss1_status)
  (:gnss2_status
   (&optional __gnss2_status)
   (if __gnss2_status (setq _gnss2_status __gnss2_status)) _gnss2_status)
  (:wheelspeed_status
   (&optional __wheelspeed_status)
   (if __wheelspeed_status (setq _wheelspeed_status __wheelspeed_status)) _wheelspeed_status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _pose_frame
    4 (length _pose_frame)
    ;; string _kin_frame
    4 (length _kin_frame)
    ;; geometry_msgs/PoseWithCovariance _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/TwistWithCovariance _velocity
    (send _velocity :serialization-length)
    ;; geometry_msgs/Vector3 _acceleration
    (send _acceleration :serialization-length)
    ;; int16 _fusion_status
    2
    ;; int16 _imu_bias_status
    2
    ;; int16 _gnss1_status
    2
    ;; int16 _gnss2_status
    2
    ;; int16 _wheelspeed_status
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _pose_frame
       (write-long (length _pose_frame) s) (princ _pose_frame s)
     ;; string _kin_frame
       (write-long (length _kin_frame) s) (princ _kin_frame s)
     ;; geometry_msgs/PoseWithCovariance _pose
       (send _pose :serialize s)
     ;; geometry_msgs/TwistWithCovariance _velocity
       (send _velocity :serialize s)
     ;; geometry_msgs/Vector3 _acceleration
       (send _acceleration :serialize s)
     ;; int16 _fusion_status
       (write-word _fusion_status s)
     ;; int16 _imu_bias_status
       (write-word _imu_bias_status s)
     ;; int16 _gnss1_status
       (write-word _gnss1_status s)
     ;; int16 _gnss2_status
       (write-word _gnss2_status s)
     ;; int16 _wheelspeed_status
       (write-word _wheelspeed_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _pose_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pose_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _kin_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _kin_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/PoseWithCovariance _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/TwistWithCovariance _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; geometry_msgs/Vector3 _acceleration
     (send _acceleration :deserialize buf ptr-) (incf ptr- (send _acceleration :serialization-length))
   ;; int16 _fusion_status
     (setq _fusion_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _imu_bias_status
     (setq _imu_bias_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _gnss1_status
     (setq _gnss1_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _gnss2_status
     (setq _gnss2_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _wheelspeed_status
     (setq _wheelspeed_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get fixposition_driver_ros1::odomenu :md5sum-) "eae2b348c8bfb758ec15b33f447d1eab")
(setf (get fixposition_driver_ros1::odomenu :datatype-) "fixposition_driver_ros1/odomenu")
(setf (get fixposition_driver_ros1::odomenu :definition-)
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
# Fixposition FP_A-ODOMENU Message
#
#
####################################################################################################

Header header
string pose_frame                            # frame of the pose values [pose, quaternion]
string kin_frame                             # frame of the kinematic values [linear/angular velocity, acceleration]
geometry_msgs/PoseWithCovariance pose        # position, orientation
geometry_msgs/TwistWithCovariance velocity   # linear, angular
geometry_msgs/Vector3 acceleration           # linear acceleration

int16 fusion_status                          # field for the fusion status
int16 imu_bias_status                        # field for the IMU bias status
int16 gnss1_status                           # field for the gnss1 status
int16 gnss2_status                           # field for the gnss2 status
int16 wheelspeed_status                      # field for the wheelspeed status

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
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

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



(provide :fixposition_driver_ros1/odomenu "eae2b348c8bfb758ec15b33f447d1eab")


