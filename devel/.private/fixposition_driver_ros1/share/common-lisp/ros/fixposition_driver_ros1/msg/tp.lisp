; Auto-generated. Do not edit!


(cl:in-package fixposition_driver_ros1-msg)


;//! \htmlinclude tp.msg.html

(cl:defclass <tp> (roslisp-msg-protocol:ros-message)
  ((tp_name
    :reader tp_name
    :initarg :tp_name
    :type cl:string
    :initform "")
   (timebase
    :reader timebase
    :initarg :timebase
    :type cl:string
    :initform "")
   (timeref
    :reader timeref
    :initarg :timeref
    :type cl:string
    :initform "")
   (tp_tow_sec
    :reader tp_tow_sec
    :initarg :tp_tow_sec
    :type cl:integer
    :initform 0)
   (tp_tow_psec
    :reader tp_tow_psec
    :initarg :tp_tow_psec
    :type cl:float
    :initform 0.0)
   (gps_leaps
    :reader gps_leaps
    :initarg :gps_leaps
    :type cl:integer
    :initform 0))
)

(cl:defclass tp (<tp>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <tp>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'tp)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fixposition_driver_ros1-msg:<tp> is deprecated: use fixposition_driver_ros1-msg:tp instead.")))

(cl:ensure-generic-function 'tp_name-val :lambda-list '(m))
(cl:defmethod tp_name-val ((m <tp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:tp_name-val is deprecated.  Use fixposition_driver_ros1-msg:tp_name instead.")
  (tp_name m))

(cl:ensure-generic-function 'timebase-val :lambda-list '(m))
(cl:defmethod timebase-val ((m <tp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:timebase-val is deprecated.  Use fixposition_driver_ros1-msg:timebase instead.")
  (timebase m))

(cl:ensure-generic-function 'timeref-val :lambda-list '(m))
(cl:defmethod timeref-val ((m <tp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:timeref-val is deprecated.  Use fixposition_driver_ros1-msg:timeref instead.")
  (timeref m))

(cl:ensure-generic-function 'tp_tow_sec-val :lambda-list '(m))
(cl:defmethod tp_tow_sec-val ((m <tp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:tp_tow_sec-val is deprecated.  Use fixposition_driver_ros1-msg:tp_tow_sec instead.")
  (tp_tow_sec m))

(cl:ensure-generic-function 'tp_tow_psec-val :lambda-list '(m))
(cl:defmethod tp_tow_psec-val ((m <tp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:tp_tow_psec-val is deprecated.  Use fixposition_driver_ros1-msg:tp_tow_psec instead.")
  (tp_tow_psec m))

(cl:ensure-generic-function 'gps_leaps-val :lambda-list '(m))
(cl:defmethod gps_leaps-val ((m <tp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:gps_leaps-val is deprecated.  Use fixposition_driver_ros1-msg:gps_leaps instead.")
  (gps_leaps m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <tp>) ostream)
  "Serializes a message object of type '<tp>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tp_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tp_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'timebase))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'timebase))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'timeref))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'timeref))
  (cl:let* ((signed (cl:slot-value msg 'tp_tow_sec)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tp_tow_psec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'gps_leaps)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <tp>) istream)
  "Deserializes a message object of type '<tp>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tp_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tp_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timebase) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'timebase) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timeref) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'timeref) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tp_tow_sec) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tp_tow_psec) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gps_leaps) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<tp>)))
  "Returns string type for a message object of type '<tp>"
  "fixposition_driver_ros1/tp")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'tp)))
  "Returns string type for a message object of type 'tp"
  "fixposition_driver_ros1/tp")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<tp>)))
  "Returns md5sum for a message object of type '<tp>"
  "fb47e0dd4a2fae13d470d2c34ba242f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'tp)))
  "Returns md5sum for a message object of type 'tp"
  "fb47e0dd4a2fae13d470d2c34ba242f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<tp>)))
  "Returns full string definition for message of type '<tp>"
  (cl:format cl:nil "####################################################################################################~%#~%#    Copyright (c) 2023  ___     ___~%#                       \\\\  \\\\  /  /~%#                        \\\\  \\\\/  /~%#                         /  /\\\\  \\\\~%#                        /__/  \\\\__\\\\  Fixposition AG~%#~%####################################################################################################~%#~%# Fixposition FP_A-TP Message~%#~%#~%####################################################################################################~%~%string  tp_name                              # Timepulse name (source)~%string  timebase                             # Time base (see below), or null if not available~%string  timeref                              # Time reference (see below), or null if not available~%int64   tp_tow_sec                           # Timepulse time seconds of week, integer second part (0–604799), or null~%float64 tp_tow_psec                          # Timepulse time seconds of week, sub-second part (0.000000000000–0.999999999999), or null~%int64   gps_leaps                            # GPS leapseconds, or null if unknown~%~%~%# Values for timebase~%#~%# | Value | Description               |~%# |-------|---------------------------|~%# |  null | No timepulse alignment    |~%# |  GNSS | Timepulse aligned to GNSS |~%# |   UTC | Timepulse aligned to UTC  |~%~%~%# Values for timeref if timebase is GNSS~%#~%# | Value | Description                     |~%# |-------|---------------------------------|~%# |   GPS | Timepulse aligned to GPS        |~%# |   GAL | Timepulse aligned to Galileo    |~%# |   BDS | Timepulse aligned to BeiDou     |~%# |   GLO | Timepulse aligned to GLONASS    |~%# | OTHER | Timepulse aligned to other GNSS |~%~%~%# Values for timeref if timebase is UTC~%#~%# | Value | Description                                                                |~%# |-------|----------------------------------------------------------------------------|~%# |  NONE | Timepulse aligned to no UTC (no precise UTC parameters known yet)          |~%# |   CRL | Timepulse aligned to Communications Research Laboratory (CRL), Japan       |~%# |  NIST | Timepulse aligned to National Institute of Standards and Technology (NIST) |~%# |  USNO | Timepulse aligned to U.S. Naval Observatory (USNO)                         |~%# |  BIPM | Timepulse aligned to International Bureau of Weights and Measures (BIPM)   |~%# |    EU | Timepulse aligned to European laboratories                                 |~%# |    SU | Timepulse aligned to Former Soviet Union (SU)                              |~%# |  NTSC | Timepulse aligned to National Time Service Center (NTSC), China            |~%# | OTHER | Timepulse aligned to other/unknown UTC                                     |~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'tp)))
  "Returns full string definition for message of type 'tp"
  (cl:format cl:nil "####################################################################################################~%#~%#    Copyright (c) 2023  ___     ___~%#                       \\\\  \\\\  /  /~%#                        \\\\  \\\\/  /~%#                         /  /\\\\  \\\\~%#                        /__/  \\\\__\\\\  Fixposition AG~%#~%####################################################################################################~%#~%# Fixposition FP_A-TP Message~%#~%#~%####################################################################################################~%~%string  tp_name                              # Timepulse name (source)~%string  timebase                             # Time base (see below), or null if not available~%string  timeref                              # Time reference (see below), or null if not available~%int64   tp_tow_sec                           # Timepulse time seconds of week, integer second part (0–604799), or null~%float64 tp_tow_psec                          # Timepulse time seconds of week, sub-second part (0.000000000000–0.999999999999), or null~%int64   gps_leaps                            # GPS leapseconds, or null if unknown~%~%~%# Values for timebase~%#~%# | Value | Description               |~%# |-------|---------------------------|~%# |  null | No timepulse alignment    |~%# |  GNSS | Timepulse aligned to GNSS |~%# |   UTC | Timepulse aligned to UTC  |~%~%~%# Values for timeref if timebase is GNSS~%#~%# | Value | Description                     |~%# |-------|---------------------------------|~%# |   GPS | Timepulse aligned to GPS        |~%# |   GAL | Timepulse aligned to Galileo    |~%# |   BDS | Timepulse aligned to BeiDou     |~%# |   GLO | Timepulse aligned to GLONASS    |~%# | OTHER | Timepulse aligned to other GNSS |~%~%~%# Values for timeref if timebase is UTC~%#~%# | Value | Description                                                                |~%# |-------|----------------------------------------------------------------------------|~%# |  NONE | Timepulse aligned to no UTC (no precise UTC parameters known yet)          |~%# |   CRL | Timepulse aligned to Communications Research Laboratory (CRL), Japan       |~%# |  NIST | Timepulse aligned to National Institute of Standards and Technology (NIST) |~%# |  USNO | Timepulse aligned to U.S. Naval Observatory (USNO)                         |~%# |  BIPM | Timepulse aligned to International Bureau of Weights and Measures (BIPM)   |~%# |    EU | Timepulse aligned to European laboratories                                 |~%# |    SU | Timepulse aligned to Former Soviet Union (SU)                              |~%# |  NTSC | Timepulse aligned to National Time Service Center (NTSC), China            |~%# | OTHER | Timepulse aligned to other/unknown UTC                                     |~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <tp>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'tp_name))
     4 (cl:length (cl:slot-value msg 'timebase))
     4 (cl:length (cl:slot-value msg 'timeref))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <tp>))
  "Converts a ROS message object to a list"
  (cl:list 'tp
    (cl:cons ':tp_name (tp_name msg))
    (cl:cons ':timebase (timebase msg))
    (cl:cons ':timeref (timeref msg))
    (cl:cons ':tp_tow_sec (tp_tow_sec msg))
    (cl:cons ':tp_tow_psec (tp_tow_psec msg))
    (cl:cons ':gps_leaps (gps_leaps msg))
))
