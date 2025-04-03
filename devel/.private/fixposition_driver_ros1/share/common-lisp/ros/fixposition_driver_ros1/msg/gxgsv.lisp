; Auto-generated. Do not edit!


(cl:in-package fixposition_driver_ros1-msg)


;//! \htmlinclude gxgsv.msg.html

(cl:defclass <gxgsv> (roslisp-msg-protocol:ros-message)
  ((sentences
    :reader sentences
    :initarg :sentences
    :type cl:fixnum
    :initform 0)
   (sent_num
    :reader sent_num
    :initarg :sent_num
    :type cl:fixnum
    :initform 0)
   (num_sats
    :reader num_sats
    :initarg :num_sats
    :type cl:integer
    :initform 0)
   (sat_id
    :reader sat_id
    :initarg :sat_id
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (elev
    :reader elev
    :initarg :elev
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (azim
    :reader azim
    :initarg :azim
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (cno
    :reader cno
    :initarg :cno
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (signal_id
    :reader signal_id
    :initarg :signal_id
    :type cl:string
    :initform ""))
)

(cl:defclass gxgsv (<gxgsv>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gxgsv>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gxgsv)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fixposition_driver_ros1-msg:<gxgsv> is deprecated: use fixposition_driver_ros1-msg:gxgsv instead.")))

(cl:ensure-generic-function 'sentences-val :lambda-list '(m))
(cl:defmethod sentences-val ((m <gxgsv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:sentences-val is deprecated.  Use fixposition_driver_ros1-msg:sentences instead.")
  (sentences m))

(cl:ensure-generic-function 'sent_num-val :lambda-list '(m))
(cl:defmethod sent_num-val ((m <gxgsv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:sent_num-val is deprecated.  Use fixposition_driver_ros1-msg:sent_num instead.")
  (sent_num m))

(cl:ensure-generic-function 'num_sats-val :lambda-list '(m))
(cl:defmethod num_sats-val ((m <gxgsv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:num_sats-val is deprecated.  Use fixposition_driver_ros1-msg:num_sats instead.")
  (num_sats m))

(cl:ensure-generic-function 'sat_id-val :lambda-list '(m))
(cl:defmethod sat_id-val ((m <gxgsv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:sat_id-val is deprecated.  Use fixposition_driver_ros1-msg:sat_id instead.")
  (sat_id m))

(cl:ensure-generic-function 'elev-val :lambda-list '(m))
(cl:defmethod elev-val ((m <gxgsv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:elev-val is deprecated.  Use fixposition_driver_ros1-msg:elev instead.")
  (elev m))

(cl:ensure-generic-function 'azim-val :lambda-list '(m))
(cl:defmethod azim-val ((m <gxgsv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:azim-val is deprecated.  Use fixposition_driver_ros1-msg:azim instead.")
  (azim m))

(cl:ensure-generic-function 'cno-val :lambda-list '(m))
(cl:defmethod cno-val ((m <gxgsv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:cno-val is deprecated.  Use fixposition_driver_ros1-msg:cno instead.")
  (cno m))

(cl:ensure-generic-function 'signal_id-val :lambda-list '(m))
(cl:defmethod signal_id-val ((m <gxgsv>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:signal_id-val is deprecated.  Use fixposition_driver_ros1-msg:signal_id instead.")
  (signal_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gxgsv>) ostream)
  "Serializes a message object of type '<gxgsv>"
  (cl:let* ((signed (cl:slot-value msg 'sentences)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'sent_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num_sats)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sat_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'sat_id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'elev))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'elev))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'azim))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'azim))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cno))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    ))
   (cl:slot-value msg 'cno))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'signal_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'signal_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gxgsv>) istream)
  "Deserializes a message object of type '<gxgsv>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sentences) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sent_num) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_sats) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sat_id) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sat_id)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'elev) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'elev)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'azim) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'azim)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cno) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cno)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536)))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'signal_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'signal_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gxgsv>)))
  "Returns string type for a message object of type '<gxgsv>"
  "fixposition_driver_ros1/gxgsv")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gxgsv)))
  "Returns string type for a message object of type 'gxgsv"
  "fixposition_driver_ros1/gxgsv")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gxgsv>)))
  "Returns md5sum for a message object of type '<gxgsv>"
  "6c19e5f5ab3c6892027710db5940fb01")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gxgsv)))
  "Returns md5sum for a message object of type 'gxgsv"
  "6c19e5f5ab3c6892027710db5940fb01")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gxgsv>)))
  "Returns full string definition for message of type '<gxgsv>"
  (cl:format cl:nil "####################################################################################################~%#~%#    Copyright (c) 2023  ___     ___~%#                       \\\\  \\\\  /  /~%#                        \\\\  \\\\/  /~%#                         /  /\\\\  \\\\~%#                        /__/  \\\\__\\\\  Fixposition AG~%#~%####################################################################################################~%#~%# Fixposition NMEA-GX-GSV Message~%#~%#~%####################################################################################################~%~%# Format | Field     | Unit    | Description~%# -------|-----------|---------|-------------------------------------|~%int16      sentences # [-]     | Total number of sentences (1 to 9).~%int16      sent_num  # [-]     | Sentence number (1 to 9).~%int32      num_sats  # [-]     | Total number of satellites in view.~%int16[]    sat_id    # [-]     | Satellite ID number.               ~%int16[]    elev      # [deg]   | Satellite elevation. ~%int16[]    azim      # [deg]   | Satellite azimuth from true North.~%int16[]    cno       # [db-Hz] | Satellite SNR (C/No).~%string     signal_id # [Hex]   | Signal ID (see below).~%~%# Signal ID table~%#~%# | ID | Signal                        |~%# |----|-------------------------------|~%# |  0 | No signal (any talker ID)     |~%# |  1 | GPS/SBAS L1C/A (talker ID GP) |~%# |  6 | GPS L2C-L (talker ID GP)      |~%# |  7 | Galileo L1-BC (talker ID GA)  |~%# |  2 | Galileo E5b (talker ID GA)    |~%# |  1 | BeiDou B1I (talker ID GB)     |~%# |  B | BeiDou B2I (talker ID GB)     |~%# |  1 | GLONASS G1 C/A (talker ID GL) |~%# |  3 | GLONASS G2 C/A (talker ID GL) |~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gxgsv)))
  "Returns full string definition for message of type 'gxgsv"
  (cl:format cl:nil "####################################################################################################~%#~%#    Copyright (c) 2023  ___     ___~%#                       \\\\  \\\\  /  /~%#                        \\\\  \\\\/  /~%#                         /  /\\\\  \\\\~%#                        /__/  \\\\__\\\\  Fixposition AG~%#~%####################################################################################################~%#~%# Fixposition NMEA-GX-GSV Message~%#~%#~%####################################################################################################~%~%# Format | Field     | Unit    | Description~%# -------|-----------|---------|-------------------------------------|~%int16      sentences # [-]     | Total number of sentences (1 to 9).~%int16      sent_num  # [-]     | Sentence number (1 to 9).~%int32      num_sats  # [-]     | Total number of satellites in view.~%int16[]    sat_id    # [-]     | Satellite ID number.               ~%int16[]    elev      # [deg]   | Satellite elevation. ~%int16[]    azim      # [deg]   | Satellite azimuth from true North.~%int16[]    cno       # [db-Hz] | Satellite SNR (C/No).~%string     signal_id # [Hex]   | Signal ID (see below).~%~%# Signal ID table~%#~%# | ID | Signal                        |~%# |----|-------------------------------|~%# |  0 | No signal (any talker ID)     |~%# |  1 | GPS/SBAS L1C/A (talker ID GP) |~%# |  6 | GPS L2C-L (talker ID GP)      |~%# |  7 | Galileo L1-BC (talker ID GA)  |~%# |  2 | Galileo E5b (talker ID GA)    |~%# |  1 | BeiDou B1I (talker ID GB)     |~%# |  B | BeiDou B2I (talker ID GB)     |~%# |  1 | GLONASS G1 C/A (talker ID GL) |~%# |  3 | GLONASS G2 C/A (talker ID GL) |~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gxgsv>))
  (cl:+ 0
     2
     2
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sat_id) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'elev) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'azim) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cno) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:length (cl:slot-value msg 'signal_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gxgsv>))
  "Converts a ROS message object to a list"
  (cl:list 'gxgsv
    (cl:cons ':sentences (sentences msg))
    (cl:cons ':sent_num (sent_num msg))
    (cl:cons ':num_sats (num_sats msg))
    (cl:cons ':sat_id (sat_id msg))
    (cl:cons ':elev (elev msg))
    (cl:cons ':azim (azim msg))
    (cl:cons ':cno (cno msg))
    (cl:cons ':signal_id (signal_id msg))
))
