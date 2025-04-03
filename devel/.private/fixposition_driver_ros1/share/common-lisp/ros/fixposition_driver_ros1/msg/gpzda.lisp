; Auto-generated. Do not edit!


(cl:in-package fixposition_driver_ros1-msg)


;//! \htmlinclude gpzda.msg.html

(cl:defclass <gpzda> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (time
    :reader time
    :initarg :time
    :type cl:string
    :initform "")
   (date
    :reader date
    :initarg :date
    :type cl:string
    :initform "")
   (local_hr
    :reader local_hr
    :initarg :local_hr
    :type cl:fixnum
    :initform 0)
   (local_min
    :reader local_min
    :initarg :local_min
    :type cl:fixnum
    :initform 0))
)

(cl:defclass gpzda (<gpzda>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gpzda>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gpzda)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fixposition_driver_ros1-msg:<gpzda> is deprecated: use fixposition_driver_ros1-msg:gpzda instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <gpzda>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:header-val is deprecated.  Use fixposition_driver_ros1-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <gpzda>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:time-val is deprecated.  Use fixposition_driver_ros1-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'date-val :lambda-list '(m))
(cl:defmethod date-val ((m <gpzda>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:date-val is deprecated.  Use fixposition_driver_ros1-msg:date instead.")
  (date m))

(cl:ensure-generic-function 'local_hr-val :lambda-list '(m))
(cl:defmethod local_hr-val ((m <gpzda>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:local_hr-val is deprecated.  Use fixposition_driver_ros1-msg:local_hr instead.")
  (local_hr m))

(cl:ensure-generic-function 'local_min-val :lambda-list '(m))
(cl:defmethod local_min-val ((m <gpzda>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:local_min-val is deprecated.  Use fixposition_driver_ros1-msg:local_min instead.")
  (local_min m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gpzda>) ostream)
  "Serializes a message object of type '<gpzda>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'time))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'date))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'date))
  (cl:let* ((signed (cl:slot-value msg 'local_hr)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'local_min)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gpzda>) istream)
  "Deserializes a message object of type '<gpzda>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'time) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'date) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'date) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'local_hr) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'local_min) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gpzda>)))
  "Returns string type for a message object of type '<gpzda>"
  "fixposition_driver_ros1/gpzda")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gpzda)))
  "Returns string type for a message object of type 'gpzda"
  "fixposition_driver_ros1/gpzda")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gpzda>)))
  "Returns md5sum for a message object of type '<gpzda>"
  "5aa4c52da2e45e51197dea2175085966")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gpzda)))
  "Returns md5sum for a message object of type 'gpzda"
  "5aa4c52da2e45e51197dea2175085966")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gpzda>)))
  "Returns full string definition for message of type '<gpzda>"
  (cl:format cl:nil "####################################################################################################~%#~%#    Copyright (c) 2023  ___     ___~%#                       \\\\  \\\\  /  /~%#                        \\\\  \\\\/  /~%#                         /  /\\\\  \\\\~%#                        /__/  \\\\__\\\\  Fixposition AG~%#~%####################################################################################################~%#~%# Fixposition NMEA-GP-ZDA Message~%#~%#~%####################################################################################################~%~%# Format | Field     | Unit            | Description~%# -------|-----------|-----------------|-------------------------------------------------------|~%Header     header    # [ns]            | Specifies the ROS time and Euclidian reference frame.~%string     time      # [hhmmss.ss(ss)] | UTC0 time (hours, minutes and seconds).~%string     date      # [dd/mm/yyyy]    | Date (UTC0).~%int16      local_hr  # [00+-13]        | Local zone hours, always 00 (= UTC).~%int16      local_min # [00-59]         | Local zone minutes, always 00 (= UTC).~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gpzda)))
  "Returns full string definition for message of type 'gpzda"
  (cl:format cl:nil "####################################################################################################~%#~%#    Copyright (c) 2023  ___     ___~%#                       \\\\  \\\\  /  /~%#                        \\\\  \\\\/  /~%#                         /  /\\\\  \\\\~%#                        /__/  \\\\__\\\\  Fixposition AG~%#~%####################################################################################################~%#~%# Fixposition NMEA-GP-ZDA Message~%#~%#~%####################################################################################################~%~%# Format | Field     | Unit            | Description~%# -------|-----------|-----------------|-------------------------------------------------------|~%Header     header    # [ns]            | Specifies the ROS time and Euclidian reference frame.~%string     time      # [hhmmss.ss(ss)] | UTC0 time (hours, minutes and seconds).~%string     date      # [dd/mm/yyyy]    | Date (UTC0).~%int16      local_hr  # [00+-13]        | Local zone hours, always 00 (= UTC).~%int16      local_min # [00-59]         | Local zone minutes, always 00 (= UTC).~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gpzda>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'time))
     4 (cl:length (cl:slot-value msg 'date))
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gpzda>))
  "Converts a ROS message object to a list"
  (cl:list 'gpzda
    (cl:cons ':header (header msg))
    (cl:cons ':time (time msg))
    (cl:cons ':date (date msg))
    (cl:cons ':local_hr (local_hr msg))
    (cl:cons ':local_min (local_min msg))
))
