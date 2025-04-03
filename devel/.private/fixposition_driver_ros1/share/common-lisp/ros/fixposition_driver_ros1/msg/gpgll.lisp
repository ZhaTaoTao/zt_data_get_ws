; Auto-generated. Do not edit!


(cl:in-package fixposition_driver_ros1-msg)


;//! \htmlinclude gpgll.msg.html

(cl:defclass <gpgll> (roslisp-msg-protocol:ros-message)
  ((latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (lat_ns
    :reader lat_ns
    :initarg :lat_ns
    :type cl:integer
    :initform 0)
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:float
    :initform 0.0)
   (lon_ew
    :reader lon_ew
    :initarg :lon_ew
    :type cl:integer
    :initform 0)
   (time
    :reader time
    :initarg :time
    :type cl:string
    :initform "")
   (status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:integer
    :initform 0))
)

(cl:defclass gpgll (<gpgll>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gpgll>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gpgll)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fixposition_driver_ros1-msg:<gpgll> is deprecated: use fixposition_driver_ros1-msg:gpgll instead.")))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <gpgll>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:latitude-val is deprecated.  Use fixposition_driver_ros1-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'lat_ns-val :lambda-list '(m))
(cl:defmethod lat_ns-val ((m <gpgll>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:lat_ns-val is deprecated.  Use fixposition_driver_ros1-msg:lat_ns instead.")
  (lat_ns m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <gpgll>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:longitude-val is deprecated.  Use fixposition_driver_ros1-msg:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'lon_ew-val :lambda-list '(m))
(cl:defmethod lon_ew-val ((m <gpgll>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:lon_ew-val is deprecated.  Use fixposition_driver_ros1-msg:lon_ew instead.")
  (lon_ew m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <gpgll>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:time-val is deprecated.  Use fixposition_driver_ros1-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <gpgll>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:status-val is deprecated.  Use fixposition_driver_ros1-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <gpgll>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:mode-val is deprecated.  Use fixposition_driver_ros1-msg:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gpgll>) ostream)
  "Serializes a message object of type '<gpgll>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lat_ns)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lon_ew)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'time))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gpgll>) istream)
  "Deserializes a message object of type '<gpgll>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lat_ns)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lon_ew)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'time) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gpgll>)))
  "Returns string type for a message object of type '<gpgll>"
  "fixposition_driver_ros1/gpgll")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gpgll)))
  "Returns string type for a message object of type 'gpgll"
  "fixposition_driver_ros1/gpgll")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gpgll>)))
  "Returns md5sum for a message object of type '<gpgll>"
  "e3576975fe64f5ded3db23e0cd342a87")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gpgll)))
  "Returns md5sum for a message object of type 'gpgll"
  "e3576975fe64f5ded3db23e0cd342a87")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gpgll>)))
  "Returns full string definition for message of type '<gpgll>"
  (cl:format cl:nil "####################################################################################################~%#~%#    Copyright (c) 2023  ___     ___~%#                       \\\\  \\\\  /  /~%#                        \\\\  \\\\/  /~%#                         /  /\\\\  \\\\~%#                        /__/  \\\\__\\\\  Fixposition AG~%#~%####################################################################################################~%#~%# Fixposition NMEA-GP-GLL Message~%#~%#~%####################################################################################################~%~%# Format | Field     | Unit              | Description~%# -------|-----------|-------------------|--------------------------------------------------------|~%float64    latitude  # [ddmm.mmmmm(mm)]  | Latitude.~%char       lat_ns    # [-]               | Latitude north (N) or south (S) indicator.~%float64    longitude # [dddmm.mmmmm(mm)] | Longitude.~%char       lon_ew    # [-]               | Longitude east (E) or west (W) indicator.~%string     time      # [hhmmss.ss(ss)]   | UTC time (hours, minutes and seconds).~%char       status    # [-]               | Data validity status, A (data valid) or V (not valid).~%char       mode      # [-]               | Positioning system mode indicator (see below).~%~%# Mode table~%#~%# | ID | Signal                |~%# |----|-----------------------|~%# |  N | Data not valid        |~%# |  E | Dead-reckoning        |~%# |  D | Differential          |~%# |  A | Autonomous            |~%# |  M | Manual input not used |~%# |  S | Simulator not used    |~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gpgll)))
  "Returns full string definition for message of type 'gpgll"
  (cl:format cl:nil "####################################################################################################~%#~%#    Copyright (c) 2023  ___     ___~%#                       \\\\  \\\\  /  /~%#                        \\\\  \\\\/  /~%#                         /  /\\\\  \\\\~%#                        /__/  \\\\__\\\\  Fixposition AG~%#~%####################################################################################################~%#~%# Fixposition NMEA-GP-GLL Message~%#~%#~%####################################################################################################~%~%# Format | Field     | Unit              | Description~%# -------|-----------|-------------------|--------------------------------------------------------|~%float64    latitude  # [ddmm.mmmmm(mm)]  | Latitude.~%char       lat_ns    # [-]               | Latitude north (N) or south (S) indicator.~%float64    longitude # [dddmm.mmmmm(mm)] | Longitude.~%char       lon_ew    # [-]               | Longitude east (E) or west (W) indicator.~%string     time      # [hhmmss.ss(ss)]   | UTC time (hours, minutes and seconds).~%char       status    # [-]               | Data validity status, A (data valid) or V (not valid).~%char       mode      # [-]               | Positioning system mode indicator (see below).~%~%# Mode table~%#~%# | ID | Signal                |~%# |----|-----------------------|~%# |  N | Data not valid        |~%# |  E | Dead-reckoning        |~%# |  D | Differential          |~%# |  A | Autonomous            |~%# |  M | Manual input not used |~%# |  S | Simulator not used    |~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gpgll>))
  (cl:+ 0
     8
     1
     8
     1
     4 (cl:length (cl:slot-value msg 'time))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gpgll>))
  "Converts a ROS message object to a list"
  (cl:list 'gpgll
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':lat_ns (lat_ns msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':lon_ew (lon_ew msg))
    (cl:cons ':time (time msg))
    (cl:cons ':status (status msg))
    (cl:cons ':mode (mode msg))
))
