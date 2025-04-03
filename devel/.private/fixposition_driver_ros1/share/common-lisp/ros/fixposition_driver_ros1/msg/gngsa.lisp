; Auto-generated. Do not edit!


(cl:in-package fixposition_driver_ros1-msg)


;//! \htmlinclude gngsa.msg.html

(cl:defclass <gngsa> (roslisp-msg-protocol:ros-message)
  ((mode_op
    :reader mode_op
    :initarg :mode_op
    :type cl:integer
    :initform 0)
   (mode_nav
    :reader mode_nav
    :initarg :mode_nav
    :type cl:fixnum
    :initform 0)
   (ids
    :reader ids
    :initarg :ids
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (pdop
    :reader pdop
    :initarg :pdop
    :type cl:float
    :initform 0.0)
   (hdop
    :reader hdop
    :initarg :hdop
    :type cl:float
    :initform 0.0)
   (vdop
    :reader vdop
    :initarg :vdop
    :type cl:float
    :initform 0.0)
   (gnss_id
    :reader gnss_id
    :initarg :gnss_id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass gngsa (<gngsa>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gngsa>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gngsa)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fixposition_driver_ros1-msg:<gngsa> is deprecated: use fixposition_driver_ros1-msg:gngsa instead.")))

(cl:ensure-generic-function 'mode_op-val :lambda-list '(m))
(cl:defmethod mode_op-val ((m <gngsa>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:mode_op-val is deprecated.  Use fixposition_driver_ros1-msg:mode_op instead.")
  (mode_op m))

(cl:ensure-generic-function 'mode_nav-val :lambda-list '(m))
(cl:defmethod mode_nav-val ((m <gngsa>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:mode_nav-val is deprecated.  Use fixposition_driver_ros1-msg:mode_nav instead.")
  (mode_nav m))

(cl:ensure-generic-function 'ids-val :lambda-list '(m))
(cl:defmethod ids-val ((m <gngsa>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:ids-val is deprecated.  Use fixposition_driver_ros1-msg:ids instead.")
  (ids m))

(cl:ensure-generic-function 'pdop-val :lambda-list '(m))
(cl:defmethod pdop-val ((m <gngsa>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:pdop-val is deprecated.  Use fixposition_driver_ros1-msg:pdop instead.")
  (pdop m))

(cl:ensure-generic-function 'hdop-val :lambda-list '(m))
(cl:defmethod hdop-val ((m <gngsa>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:hdop-val is deprecated.  Use fixposition_driver_ros1-msg:hdop instead.")
  (hdop m))

(cl:ensure-generic-function 'vdop-val :lambda-list '(m))
(cl:defmethod vdop-val ((m <gngsa>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:vdop-val is deprecated.  Use fixposition_driver_ros1-msg:vdop instead.")
  (vdop m))

(cl:ensure-generic-function 'gnss_id-val :lambda-list '(m))
(cl:defmethod gnss_id-val ((m <gngsa>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:gnss_id-val is deprecated.  Use fixposition_driver_ros1-msg:gnss_id instead.")
  (gnss_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gngsa>) ostream)
  "Serializes a message object of type '<gngsa>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode_op)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'mode_nav)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'ids))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pdop))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'hdop))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vdop))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'gnss_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gngsa>) istream)
  "Deserializes a message object of type '<gngsa>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode_op)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode_nav) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256)))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pdop) (roslisp-utils:decode-double-float-bits bits)))
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
    (cl:setf (cl:slot-value msg 'vdop) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gnss_id) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gngsa>)))
  "Returns string type for a message object of type '<gngsa>"
  "fixposition_driver_ros1/gngsa")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gngsa)))
  "Returns string type for a message object of type 'gngsa"
  "fixposition_driver_ros1/gngsa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gngsa>)))
  "Returns md5sum for a message object of type '<gngsa>"
  "8e04c2fa8cea888c64fc400d41a1a650")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gngsa)))
  "Returns md5sum for a message object of type 'gngsa"
  "8e04c2fa8cea888c64fc400d41a1a650")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gngsa>)))
  "Returns full string definition for message of type '<gngsa>"
  (cl:format cl:nil "####################################################################################################~%#~%#    Copyright (c) 2023  ___     ___~%#                       \\\\  \\\\  /  /~%#                        \\\\  \\\\/  /~%#                         /  /\\\\  \\\\~%#                        /__/  \\\\__\\\\  Fixposition AG~%#~%####################################################################################################~%#~%# Fixposition NMEA-GN-GSA Message~%#~%#~%####################################################################################################~%~%# Format | Field    | Unit | Description~%# -------|----------|------|----------------------------------------------------------------------------------------------|~%char       mode_op  #  [-] | Operation mode: always A (automatic, allowed to automatically switch 2D/3D).~%int8       mode_nav #  [-] | Navigation mode: 1 (fix not available), 2 (2D) or 3 (3D).~%int8[]     ids      #  [-] | ID numbers of satellites used in solution. See the NMEA 0183 version 4.11 standard document.~%float64    pdop     #  [-] | Position dillution of precision.~%float64    hdop     #  [-] | Horizontal dillution of precision.~%float64    vdop     #  [-] | Vertical dillution of precision.~%int8       gnss_id  #  [-] | GNSS system ID: 1 (GPS, SBAS), 2 (GLONASS), 3 (Galileo), 4 (BeiDou), 5 (QZSS).~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gngsa)))
  "Returns full string definition for message of type 'gngsa"
  (cl:format cl:nil "####################################################################################################~%#~%#    Copyright (c) 2023  ___     ___~%#                       \\\\  \\\\  /  /~%#                        \\\\  \\\\/  /~%#                         /  /\\\\  \\\\~%#                        /__/  \\\\__\\\\  Fixposition AG~%#~%####################################################################################################~%#~%# Fixposition NMEA-GN-GSA Message~%#~%#~%####################################################################################################~%~%# Format | Field    | Unit | Description~%# -------|----------|------|----------------------------------------------------------------------------------------------|~%char       mode_op  #  [-] | Operation mode: always A (automatic, allowed to automatically switch 2D/3D).~%int8       mode_nav #  [-] | Navigation mode: 1 (fix not available), 2 (2D) or 3 (3D).~%int8[]     ids      #  [-] | ID numbers of satellites used in solution. See the NMEA 0183 version 4.11 standard document.~%float64    pdop     #  [-] | Position dillution of precision.~%float64    hdop     #  [-] | Horizontal dillution of precision.~%float64    vdop     #  [-] | Vertical dillution of precision.~%int8       gnss_id  #  [-] | GNSS system ID: 1 (GPS, SBAS), 2 (GLONASS), 3 (Galileo), 4 (BeiDou), 5 (QZSS).~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gngsa>))
  (cl:+ 0
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     8
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gngsa>))
  "Converts a ROS message object to a list"
  (cl:list 'gngsa
    (cl:cons ':mode_op (mode_op msg))
    (cl:cons ':mode_nav (mode_nav msg))
    (cl:cons ':ids (ids msg))
    (cl:cons ':pdop (pdop msg))
    (cl:cons ':hdop (hdop msg))
    (cl:cons ':vdop (vdop msg))
    (cl:cons ':gnss_id (gnss_id msg))
))
