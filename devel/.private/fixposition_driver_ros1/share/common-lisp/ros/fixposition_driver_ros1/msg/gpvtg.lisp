; Auto-generated. Do not edit!


(cl:in-package fixposition_driver_ros1-msg)


;//! \htmlinclude gpvtg.msg.html

(cl:defclass <gpvtg> (roslisp-msg-protocol:ros-message)
  ((cog_true
    :reader cog_true
    :initarg :cog_true
    :type cl:float
    :initform 0.0)
   (cog_ref_t
    :reader cog_ref_t
    :initarg :cog_ref_t
    :type cl:integer
    :initform 0)
   (cog_mag
    :reader cog_mag
    :initarg :cog_mag
    :type cl:float
    :initform 0.0)
   (cog_ref_m
    :reader cog_ref_m
    :initarg :cog_ref_m
    :type cl:integer
    :initform 0)
   (sog_knot
    :reader sog_knot
    :initarg :sog_knot
    :type cl:float
    :initform 0.0)
   (sog_unit_n
    :reader sog_unit_n
    :initarg :sog_unit_n
    :type cl:integer
    :initform 0)
   (sog_kph
    :reader sog_kph
    :initarg :sog_kph
    :type cl:float
    :initform 0.0)
   (sog_unit_k
    :reader sog_unit_k
    :initarg :sog_unit_k
    :type cl:integer
    :initform 0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:integer
    :initform 0))
)

(cl:defclass gpvtg (<gpvtg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gpvtg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gpvtg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fixposition_driver_ros1-msg:<gpvtg> is deprecated: use fixposition_driver_ros1-msg:gpvtg instead.")))

(cl:ensure-generic-function 'cog_true-val :lambda-list '(m))
(cl:defmethod cog_true-val ((m <gpvtg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:cog_true-val is deprecated.  Use fixposition_driver_ros1-msg:cog_true instead.")
  (cog_true m))

(cl:ensure-generic-function 'cog_ref_t-val :lambda-list '(m))
(cl:defmethod cog_ref_t-val ((m <gpvtg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:cog_ref_t-val is deprecated.  Use fixposition_driver_ros1-msg:cog_ref_t instead.")
  (cog_ref_t m))

(cl:ensure-generic-function 'cog_mag-val :lambda-list '(m))
(cl:defmethod cog_mag-val ((m <gpvtg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:cog_mag-val is deprecated.  Use fixposition_driver_ros1-msg:cog_mag instead.")
  (cog_mag m))

(cl:ensure-generic-function 'cog_ref_m-val :lambda-list '(m))
(cl:defmethod cog_ref_m-val ((m <gpvtg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:cog_ref_m-val is deprecated.  Use fixposition_driver_ros1-msg:cog_ref_m instead.")
  (cog_ref_m m))

(cl:ensure-generic-function 'sog_knot-val :lambda-list '(m))
(cl:defmethod sog_knot-val ((m <gpvtg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:sog_knot-val is deprecated.  Use fixposition_driver_ros1-msg:sog_knot instead.")
  (sog_knot m))

(cl:ensure-generic-function 'sog_unit_n-val :lambda-list '(m))
(cl:defmethod sog_unit_n-val ((m <gpvtg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:sog_unit_n-val is deprecated.  Use fixposition_driver_ros1-msg:sog_unit_n instead.")
  (sog_unit_n m))

(cl:ensure-generic-function 'sog_kph-val :lambda-list '(m))
(cl:defmethod sog_kph-val ((m <gpvtg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:sog_kph-val is deprecated.  Use fixposition_driver_ros1-msg:sog_kph instead.")
  (sog_kph m))

(cl:ensure-generic-function 'sog_unit_k-val :lambda-list '(m))
(cl:defmethod sog_unit_k-val ((m <gpvtg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:sog_unit_k-val is deprecated.  Use fixposition_driver_ros1-msg:sog_unit_k instead.")
  (sog_unit_k m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <gpvtg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:mode-val is deprecated.  Use fixposition_driver_ros1-msg:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gpvtg>) ostream)
  "Serializes a message object of type '<gpvtg>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cog_true))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cog_ref_t)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cog_mag))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cog_ref_m)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'sog_knot))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sog_unit_n)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'sog_kph))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sog_unit_k)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gpvtg>) istream)
  "Deserializes a message object of type '<gpvtg>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cog_true) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cog_ref_t)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cog_mag) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cog_ref_m)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sog_knot) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sog_unit_n)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sog_kph) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sog_unit_k)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gpvtg>)))
  "Returns string type for a message object of type '<gpvtg>"
  "fixposition_driver_ros1/gpvtg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gpvtg)))
  "Returns string type for a message object of type 'gpvtg"
  "fixposition_driver_ros1/gpvtg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gpvtg>)))
  "Returns md5sum for a message object of type '<gpvtg>"
  "a44dc6b882f07ff5b8c222767876cea2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gpvtg)))
  "Returns md5sum for a message object of type 'gpvtg"
  "a44dc6b882f07ff5b8c222767876cea2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gpvtg>)))
  "Returns full string definition for message of type '<gpvtg>"
  (cl:format cl:nil "####################################################################################################~%#~%#    Copyright (c) 2023  ___     ___~%#                       \\\\  \\\\  /  /~%#                        \\\\  \\\\/  /~%#                         /  /\\\\  \\\\~%#                        /__/  \\\\__\\\\  Fixposition AG~%#~%####################################################################################################~%#~%# Fixposition NMEA-GP-VTG Message~%#~%#~%####################################################################################################~%~%# Format | Field      | Unit    | Description~%# -------|------------|---------|--------------------------------------------------------|~%float64    cog_true   # [deg]   | Course over ground wrt. True North.~%char       cog_ref_t  # [-]     | COG reference, always T (true).~%float64    cog_mag    # [-]     | Course over ground w.r.t. Magnetic North, always null.~%char       cog_ref_m  # [-]     | COG reference, always M (magnetic).~%float64    sog_knot   # [knots] | Speed over ground in knots.~%char       sog_unit_n # [-]     | SOG reference, always N (knots).~%float64    sog_kph    # [km/h]  | Speed over ground in km/h.~%char       sog_unit_k # [-]     | SOG reference, always K (km/h).~%char       mode       # [-]     | Positioning system mode indicator (see below).~%~%# Mode table~%#~%# | ID | Signal                |~%# |----|-----------------------|~%# |  N | Data not valid        |~%# |  E | Dead-reckoning        |~%# |  D | Differential          |~%# |  A | Autonomous            |~%# |  M | Manual input not used |~%# |  S | Simulator not used    |~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gpvtg)))
  "Returns full string definition for message of type 'gpvtg"
  (cl:format cl:nil "####################################################################################################~%#~%#    Copyright (c) 2023  ___     ___~%#                       \\\\  \\\\  /  /~%#                        \\\\  \\\\/  /~%#                         /  /\\\\  \\\\~%#                        /__/  \\\\__\\\\  Fixposition AG~%#~%####################################################################################################~%#~%# Fixposition NMEA-GP-VTG Message~%#~%#~%####################################################################################################~%~%# Format | Field      | Unit    | Description~%# -------|------------|---------|--------------------------------------------------------|~%float64    cog_true   # [deg]   | Course over ground wrt. True North.~%char       cog_ref_t  # [-]     | COG reference, always T (true).~%float64    cog_mag    # [-]     | Course over ground w.r.t. Magnetic North, always null.~%char       cog_ref_m  # [-]     | COG reference, always M (magnetic).~%float64    sog_knot   # [knots] | Speed over ground in knots.~%char       sog_unit_n # [-]     | SOG reference, always N (knots).~%float64    sog_kph    # [km/h]  | Speed over ground in km/h.~%char       sog_unit_k # [-]     | SOG reference, always K (km/h).~%char       mode       # [-]     | Positioning system mode indicator (see below).~%~%# Mode table~%#~%# | ID | Signal                |~%# |----|-----------------------|~%# |  N | Data not valid        |~%# |  E | Dead-reckoning        |~%# |  D | Differential          |~%# |  A | Autonomous            |~%# |  M | Manual input not used |~%# |  S | Simulator not used    |~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gpvtg>))
  (cl:+ 0
     8
     1
     8
     1
     8
     1
     8
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gpvtg>))
  "Converts a ROS message object to a list"
  (cl:list 'gpvtg
    (cl:cons ':cog_true (cog_true msg))
    (cl:cons ':cog_ref_t (cog_ref_t msg))
    (cl:cons ':cog_mag (cog_mag msg))
    (cl:cons ':cog_ref_m (cog_ref_m msg))
    (cl:cons ':sog_knot (sog_knot msg))
    (cl:cons ':sog_unit_n (sog_unit_n msg))
    (cl:cons ':sog_kph (sog_kph msg))
    (cl:cons ':sog_unit_k (sog_unit_k msg))
    (cl:cons ':mode (mode msg))
))
