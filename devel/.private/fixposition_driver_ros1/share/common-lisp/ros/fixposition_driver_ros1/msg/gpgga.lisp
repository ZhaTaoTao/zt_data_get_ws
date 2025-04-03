; Auto-generated. Do not edit!


(cl:in-package fixposition_driver_ros1-msg)


;//! \htmlinclude gpgga.msg.html

(cl:defclass <gpgga> (roslisp-msg-protocol:ros-message)
  ((time
    :reader time
    :initarg :time
    :type cl:string
    :initform "")
   (latitude
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
   (quality
    :reader quality
    :initarg :quality
    :type cl:fixnum
    :initform 0)
   (num_sv
    :reader num_sv
    :initarg :num_sv
    :type cl:fixnum
    :initform 0)
   (hdop
    :reader hdop
    :initarg :hdop
    :type cl:float
    :initform 0.0)
   (alt
    :reader alt
    :initarg :alt
    :type cl:float
    :initform 0.0)
   (alt_unit
    :reader alt_unit
    :initarg :alt_unit
    :type cl:integer
    :initform 0)
   (diff_age
    :reader diff_age
    :initarg :diff_age
    :type cl:float
    :initform 0.0)
   (diff_sta
    :reader diff_sta
    :initarg :diff_sta
    :type cl:string
    :initform "")
   (sentence
    :reader sentence
    :initarg :sentence
    :type cl:string
    :initform ""))
)

(cl:defclass gpgga (<gpgga>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gpgga>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gpgga)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fixposition_driver_ros1-msg:<gpgga> is deprecated: use fixposition_driver_ros1-msg:gpgga instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <gpgga>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:time-val is deprecated.  Use fixposition_driver_ros1-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <gpgga>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:latitude-val is deprecated.  Use fixposition_driver_ros1-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'lat_ns-val :lambda-list '(m))
(cl:defmethod lat_ns-val ((m <gpgga>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:lat_ns-val is deprecated.  Use fixposition_driver_ros1-msg:lat_ns instead.")
  (lat_ns m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <gpgga>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:longitude-val is deprecated.  Use fixposition_driver_ros1-msg:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'lon_ew-val :lambda-list '(m))
(cl:defmethod lon_ew-val ((m <gpgga>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:lon_ew-val is deprecated.  Use fixposition_driver_ros1-msg:lon_ew instead.")
  (lon_ew m))

(cl:ensure-generic-function 'quality-val :lambda-list '(m))
(cl:defmethod quality-val ((m <gpgga>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:quality-val is deprecated.  Use fixposition_driver_ros1-msg:quality instead.")
  (quality m))

(cl:ensure-generic-function 'num_sv-val :lambda-list '(m))
(cl:defmethod num_sv-val ((m <gpgga>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:num_sv-val is deprecated.  Use fixposition_driver_ros1-msg:num_sv instead.")
  (num_sv m))

(cl:ensure-generic-function 'hdop-val :lambda-list '(m))
(cl:defmethod hdop-val ((m <gpgga>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:hdop-val is deprecated.  Use fixposition_driver_ros1-msg:hdop instead.")
  (hdop m))

(cl:ensure-generic-function 'alt-val :lambda-list '(m))
(cl:defmethod alt-val ((m <gpgga>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:alt-val is deprecated.  Use fixposition_driver_ros1-msg:alt instead.")
  (alt m))

(cl:ensure-generic-function 'alt_unit-val :lambda-list '(m))
(cl:defmethod alt_unit-val ((m <gpgga>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:alt_unit-val is deprecated.  Use fixposition_driver_ros1-msg:alt_unit instead.")
  (alt_unit m))

(cl:ensure-generic-function 'diff_age-val :lambda-list '(m))
(cl:defmethod diff_age-val ((m <gpgga>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:diff_age-val is deprecated.  Use fixposition_driver_ros1-msg:diff_age instead.")
  (diff_age m))

(cl:ensure-generic-function 'diff_sta-val :lambda-list '(m))
(cl:defmethod diff_sta-val ((m <gpgga>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:diff_sta-val is deprecated.  Use fixposition_driver_ros1-msg:diff_sta instead.")
  (diff_sta m))

(cl:ensure-generic-function 'sentence-val :lambda-list '(m))
(cl:defmethod sentence-val ((m <gpgga>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:sentence-val is deprecated.  Use fixposition_driver_ros1-msg:sentence instead.")
  (sentence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gpgga>) ostream)
  "Serializes a message object of type '<gpgga>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'time))
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
  (cl:let* ((signed (cl:slot-value msg 'quality)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num_sv)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'hdop))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'alt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alt_unit)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'diff_age))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'diff_sta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'diff_sta))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sentence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sentence))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gpgga>) istream)
  "Deserializes a message object of type '<gpgga>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'time) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'quality) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_sv) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hdop) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'alt) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'alt_unit)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'diff_age) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'diff_sta) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'diff_sta) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sentence) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sentence) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gpgga>)))
  "Returns string type for a message object of type '<gpgga>"
  "fixposition_driver_ros1/gpgga")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gpgga)))
  "Returns string type for a message object of type 'gpgga"
  "fixposition_driver_ros1/gpgga")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gpgga>)))
  "Returns md5sum for a message object of type '<gpgga>"
  "923382eb309c5f8409774d790a9139d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gpgga)))
  "Returns md5sum for a message object of type 'gpgga"
  "923382eb309c5f8409774d790a9139d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gpgga>)))
  "Returns full string definition for message of type '<gpgga>"
  (cl:format cl:nil "####################################################################################################~%#~%#    Copyright (c) 2023  ___     ___~%#                       \\\\  \\\\  /  /~%#                        \\\\  \\\\/  /~%#                         /  /\\\\  \\\\~%#                        /__/  \\\\__\\\\  Fixposition AG~%#~%####################################################################################################~%#~%# Fixposition NMEA-GP-GGA Message~%#~%#~%####################################################################################################~%~%# Format | Field     | Unit              | Description~%# -------|-----------|-------------------|----------------------------------------------------------------------|~%string     time      # [hhmmss.ss(ss)]   | UTC time (hours, minutes and seconds).~%float64    latitude  # [ddmm.mmmmm(mm)]  | Latitude.~%char       lat_ns    # [-]               | Latitude north (N) or south (S) indicator.~%float64    longitude # [dddmm.mmmmm(mm)] | Longitude.~%char       lon_ew    # [-]               | Longitude east (E) or west (W) indicator.~%int8       quality   # [-]               | Quality indicator (see below).~%int8       num_sv    # [-]               | Number of satellites. Strict NMEA: 00-12. High-precision NMEA: 00-99.~%float64    hdop      # [0.10-99.99]      | Horizontal dilution of precision.~%float64    alt       # [m]               | Altitude (above ellipsoid).~%char       alt_unit  # [-]               | Altitude unit, always M (metres).~%float64    diff_age  # [-]               | Approximate age of differential data (last GPS MSM message received).~%string     diff_sta  # [-]               | DGPS station ID (0000-1023).~%string     sentence  # [-]               | ASCII string to be used by NTRIP clients.~%~%# Quality indicator table~%#~%# | ID | Signal         |~%# |----|----------------|~%# |  0 | Invalid        |~%# |  1 | Non-RTK fix    |~%# |  4 | RTK fixed      |~%# |  5 | RTK float      |~%# |  6 | Dead-reckoning |~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gpgga)))
  "Returns full string definition for message of type 'gpgga"
  (cl:format cl:nil "####################################################################################################~%#~%#    Copyright (c) 2023  ___     ___~%#                       \\\\  \\\\  /  /~%#                        \\\\  \\\\/  /~%#                         /  /\\\\  \\\\~%#                        /__/  \\\\__\\\\  Fixposition AG~%#~%####################################################################################################~%#~%# Fixposition NMEA-GP-GGA Message~%#~%#~%####################################################################################################~%~%# Format | Field     | Unit              | Description~%# -------|-----------|-------------------|----------------------------------------------------------------------|~%string     time      # [hhmmss.ss(ss)]   | UTC time (hours, minutes and seconds).~%float64    latitude  # [ddmm.mmmmm(mm)]  | Latitude.~%char       lat_ns    # [-]               | Latitude north (N) or south (S) indicator.~%float64    longitude # [dddmm.mmmmm(mm)] | Longitude.~%char       lon_ew    # [-]               | Longitude east (E) or west (W) indicator.~%int8       quality   # [-]               | Quality indicator (see below).~%int8       num_sv    # [-]               | Number of satellites. Strict NMEA: 00-12. High-precision NMEA: 00-99.~%float64    hdop      # [0.10-99.99]      | Horizontal dilution of precision.~%float64    alt       # [m]               | Altitude (above ellipsoid).~%char       alt_unit  # [-]               | Altitude unit, always M (metres).~%float64    diff_age  # [-]               | Approximate age of differential data (last GPS MSM message received).~%string     diff_sta  # [-]               | DGPS station ID (0000-1023).~%string     sentence  # [-]               | ASCII string to be used by NTRIP clients.~%~%# Quality indicator table~%#~%# | ID | Signal         |~%# |----|----------------|~%# |  0 | Invalid        |~%# |  1 | Non-RTK fix    |~%# |  4 | RTK fixed      |~%# |  5 | RTK float      |~%# |  6 | Dead-reckoning |~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gpgga>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'time))
     8
     1
     8
     1
     1
     1
     8
     8
     1
     8
     4 (cl:length (cl:slot-value msg 'diff_sta))
     4 (cl:length (cl:slot-value msg 'sentence))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gpgga>))
  "Converts a ROS message object to a list"
  (cl:list 'gpgga
    (cl:cons ':time (time msg))
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':lat_ns (lat_ns msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':lon_ew (lon_ew msg))
    (cl:cons ':quality (quality msg))
    (cl:cons ':num_sv (num_sv msg))
    (cl:cons ':hdop (hdop msg))
    (cl:cons ':alt (alt msg))
    (cl:cons ':alt_unit (alt_unit msg))
    (cl:cons ':diff_age (diff_age msg))
    (cl:cons ':diff_sta (diff_sta msg))
    (cl:cons ':sentence (sentence msg))
))
