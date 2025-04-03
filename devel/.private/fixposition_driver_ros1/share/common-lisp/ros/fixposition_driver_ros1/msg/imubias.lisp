; Auto-generated. Do not edit!


(cl:in-package fixposition_driver_ros1-msg)


;//! \htmlinclude imubias.msg.html

(cl:defclass <imubias> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (fusion_imu
    :reader fusion_imu
    :initarg :fusion_imu
    :type cl:fixnum
    :initform 0)
   (imu_status
    :reader imu_status
    :initarg :imu_status
    :type cl:fixnum
    :initform 0)
   (imu_noise
    :reader imu_noise
    :initarg :imu_noise
    :type cl:fixnum
    :initform 0)
   (imu_conv
    :reader imu_conv
    :initarg :imu_conv
    :type cl:fixnum
    :initform 0)
   (bias_acc
    :reader bias_acc
    :initarg :bias_acc
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (bias_gyr
    :reader bias_gyr
    :initarg :bias_gyr
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (bias_cov_acc
    :reader bias_cov_acc
    :initarg :bias_cov_acc
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (bias_cov_gyr
    :reader bias_cov_gyr
    :initarg :bias_cov_gyr
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass imubias (<imubias>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <imubias>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'imubias)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fixposition_driver_ros1-msg:<imubias> is deprecated: use fixposition_driver_ros1-msg:imubias instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <imubias>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:header-val is deprecated.  Use fixposition_driver_ros1-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'fusion_imu-val :lambda-list '(m))
(cl:defmethod fusion_imu-val ((m <imubias>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:fusion_imu-val is deprecated.  Use fixposition_driver_ros1-msg:fusion_imu instead.")
  (fusion_imu m))

(cl:ensure-generic-function 'imu_status-val :lambda-list '(m))
(cl:defmethod imu_status-val ((m <imubias>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:imu_status-val is deprecated.  Use fixposition_driver_ros1-msg:imu_status instead.")
  (imu_status m))

(cl:ensure-generic-function 'imu_noise-val :lambda-list '(m))
(cl:defmethod imu_noise-val ((m <imubias>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:imu_noise-val is deprecated.  Use fixposition_driver_ros1-msg:imu_noise instead.")
  (imu_noise m))

(cl:ensure-generic-function 'imu_conv-val :lambda-list '(m))
(cl:defmethod imu_conv-val ((m <imubias>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:imu_conv-val is deprecated.  Use fixposition_driver_ros1-msg:imu_conv instead.")
  (imu_conv m))

(cl:ensure-generic-function 'bias_acc-val :lambda-list '(m))
(cl:defmethod bias_acc-val ((m <imubias>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:bias_acc-val is deprecated.  Use fixposition_driver_ros1-msg:bias_acc instead.")
  (bias_acc m))

(cl:ensure-generic-function 'bias_gyr-val :lambda-list '(m))
(cl:defmethod bias_gyr-val ((m <imubias>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:bias_gyr-val is deprecated.  Use fixposition_driver_ros1-msg:bias_gyr instead.")
  (bias_gyr m))

(cl:ensure-generic-function 'bias_cov_acc-val :lambda-list '(m))
(cl:defmethod bias_cov_acc-val ((m <imubias>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:bias_cov_acc-val is deprecated.  Use fixposition_driver_ros1-msg:bias_cov_acc instead.")
  (bias_cov_acc m))

(cl:ensure-generic-function 'bias_cov_gyr-val :lambda-list '(m))
(cl:defmethod bias_cov_gyr-val ((m <imubias>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:bias_cov_gyr-val is deprecated.  Use fixposition_driver_ros1-msg:bias_cov_gyr instead.")
  (bias_cov_gyr m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <imubias>) ostream)
  "Serializes a message object of type '<imubias>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'fusion_imu)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'imu_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'imu_noise)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'imu_conv)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bias_acc) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bias_gyr) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bias_cov_acc) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bias_cov_gyr) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <imubias>) istream)
  "Deserializes a message object of type '<imubias>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fusion_imu) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'imu_status) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'imu_noise) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'imu_conv) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bias_acc) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bias_gyr) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bias_cov_acc) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bias_cov_gyr) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<imubias>)))
  "Returns string type for a message object of type '<imubias>"
  "fixposition_driver_ros1/imubias")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'imubias)))
  "Returns string type for a message object of type 'imubias"
  "fixposition_driver_ros1/imubias")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<imubias>)))
  "Returns md5sum for a message object of type '<imubias>"
  "35ce34652f0847b6fbe7e55097d74211")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'imubias)))
  "Returns md5sum for a message object of type 'imubias"
  "35ce34652f0847b6fbe7e55097d74211")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<imubias>)))
  "Returns full string definition for message of type '<imubias>"
  (cl:format cl:nil "####################################################################################################~%#~%#    Copyright (c) 2023  ___     ___~%#                       \\\\  \\\\  /  /~%#                        \\\\  \\\\/  /~%#                         /  /\\\\  \\\\~%#                        /__/  \\\\__\\\\  Fixposition AG~%#~%####################################################################################################~%#~%# Fixposition FP_A-IMUBIAS Message~%#~%#~%####################################################################################################~%~%Header header~%int16 fusion_imu                     # Fusion measurement status: IMU (see below)~%int16 imu_status                     # IMU bias status (see below)~%int16 imu_noise                      # IMU variance status (see below)~%int16 imu_conv                       # IMU convergence status (see below)~%geometry_msgs/Vector3 bias_acc       # Accelerometer bias~%geometry_msgs/Vector3 bias_gyr       # Gyroscope bias~%geometry_msgs/Vector3 bias_cov_acc   # Accelerometer bias covariance~%geometry_msgs/Vector3 bias_cov_gyr   # Gyroscope bias covariance~%~%~%# Fusion measurement status (fusion_imu)~%#~%# | Value | Description        |~%# |-------|--------------------|~%# |  null | Info not available |~%# |   0   | Not used           |~%# |   1   | Used               |~%# |   2   | Degraded           |~%~%~%# IMU bias status (imu_status)~%#~%# | Value | Description        |~%# |-------|--------------------|~%# |  null | Info not available |~%# |   0   | Not converged      |~%# |   1   | Warmstarted        |~%# |   2   | Rough convergence  |~%# |   3   | Fine convergence   |~%~%~%# IMU variance (imu_noise)~%#~%# | Value | Description        |~%# |-------|--------------------|~%# |  null | Info not available |~%# |   0   | Reserved           |~%# |   1   | Low noise          |~%# |   2   | Medium noise       |~%# |   3   | High noise         |~%# | 4...7 | Reserved           |~%~%~%# IMU accelerometer and gyroscope convergence (imu_conv)~%#~%# | Value | Description                      |~%# |-------|----------------------------------|~%# |  null | Info not available               |~%# |   0   | Awaiting Fusion                  |~%# |   1   | Awaiting IMU measurements        |~%# |   2   | Insufficient global measurements |~%# |   3   | Insufficient motion              |~%# |   4   | Converging                       |~%# | 5...6 | Reserved                         |~%# |   7   | Idle                             |~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'imubias)))
  "Returns full string definition for message of type 'imubias"
  (cl:format cl:nil "####################################################################################################~%#~%#    Copyright (c) 2023  ___     ___~%#                       \\\\  \\\\  /  /~%#                        \\\\  \\\\/  /~%#                         /  /\\\\  \\\\~%#                        /__/  \\\\__\\\\  Fixposition AG~%#~%####################################################################################################~%#~%# Fixposition FP_A-IMUBIAS Message~%#~%#~%####################################################################################################~%~%Header header~%int16 fusion_imu                     # Fusion measurement status: IMU (see below)~%int16 imu_status                     # IMU bias status (see below)~%int16 imu_noise                      # IMU variance status (see below)~%int16 imu_conv                       # IMU convergence status (see below)~%geometry_msgs/Vector3 bias_acc       # Accelerometer bias~%geometry_msgs/Vector3 bias_gyr       # Gyroscope bias~%geometry_msgs/Vector3 bias_cov_acc   # Accelerometer bias covariance~%geometry_msgs/Vector3 bias_cov_gyr   # Gyroscope bias covariance~%~%~%# Fusion measurement status (fusion_imu)~%#~%# | Value | Description        |~%# |-------|--------------------|~%# |  null | Info not available |~%# |   0   | Not used           |~%# |   1   | Used               |~%# |   2   | Degraded           |~%~%~%# IMU bias status (imu_status)~%#~%# | Value | Description        |~%# |-------|--------------------|~%# |  null | Info not available |~%# |   0   | Not converged      |~%# |   1   | Warmstarted        |~%# |   2   | Rough convergence  |~%# |   3   | Fine convergence   |~%~%~%# IMU variance (imu_noise)~%#~%# | Value | Description        |~%# |-------|--------------------|~%# |  null | Info not available |~%# |   0   | Reserved           |~%# |   1   | Low noise          |~%# |   2   | Medium noise       |~%# |   3   | High noise         |~%# | 4...7 | Reserved           |~%~%~%# IMU accelerometer and gyroscope convergence (imu_conv)~%#~%# | Value | Description                      |~%# |-------|----------------------------------|~%# |  null | Info not available               |~%# |   0   | Awaiting Fusion                  |~%# |   1   | Awaiting IMU measurements        |~%# |   2   | Insufficient global measurements |~%# |   3   | Insufficient motion              |~%# |   4   | Converging                       |~%# | 5...6 | Reserved                         |~%# |   7   | Idle                             |~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <imubias>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     2
     2
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bias_acc))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bias_gyr))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bias_cov_acc))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bias_cov_gyr))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <imubias>))
  "Converts a ROS message object to a list"
  (cl:list 'imubias
    (cl:cons ':header (header msg))
    (cl:cons ':fusion_imu (fusion_imu msg))
    (cl:cons ':imu_status (imu_status msg))
    (cl:cons ':imu_noise (imu_noise msg))
    (cl:cons ':imu_conv (imu_conv msg))
    (cl:cons ':bias_acc (bias_acc msg))
    (cl:cons ':bias_gyr (bias_gyr msg))
    (cl:cons ':bias_cov_acc (bias_cov_acc msg))
    (cl:cons ':bias_cov_gyr (bias_cov_gyr msg))
))
