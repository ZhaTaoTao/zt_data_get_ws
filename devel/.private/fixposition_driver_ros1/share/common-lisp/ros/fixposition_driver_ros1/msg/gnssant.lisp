; Auto-generated. Do not edit!


(cl:in-package fixposition_driver_ros1-msg)


;//! \htmlinclude gnssant.msg.html

(cl:defclass <gnssant> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (gnss1_state
    :reader gnss1_state
    :initarg :gnss1_state
    :type cl:string
    :initform "")
   (gnss1_power
    :reader gnss1_power
    :initarg :gnss1_power
    :type cl:string
    :initform "")
   (gnss1_age
    :reader gnss1_age
    :initarg :gnss1_age
    :type cl:integer
    :initform 0)
   (gnss2_state
    :reader gnss2_state
    :initarg :gnss2_state
    :type cl:string
    :initform "")
   (gnss2_power
    :reader gnss2_power
    :initarg :gnss2_power
    :type cl:string
    :initform "")
   (gnss2_age
    :reader gnss2_age
    :initarg :gnss2_age
    :type cl:integer
    :initform 0))
)

(cl:defclass gnssant (<gnssant>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gnssant>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gnssant)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fixposition_driver_ros1-msg:<gnssant> is deprecated: use fixposition_driver_ros1-msg:gnssant instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <gnssant>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:header-val is deprecated.  Use fixposition_driver_ros1-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'gnss1_state-val :lambda-list '(m))
(cl:defmethod gnss1_state-val ((m <gnssant>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:gnss1_state-val is deprecated.  Use fixposition_driver_ros1-msg:gnss1_state instead.")
  (gnss1_state m))

(cl:ensure-generic-function 'gnss1_power-val :lambda-list '(m))
(cl:defmethod gnss1_power-val ((m <gnssant>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:gnss1_power-val is deprecated.  Use fixposition_driver_ros1-msg:gnss1_power instead.")
  (gnss1_power m))

(cl:ensure-generic-function 'gnss1_age-val :lambda-list '(m))
(cl:defmethod gnss1_age-val ((m <gnssant>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:gnss1_age-val is deprecated.  Use fixposition_driver_ros1-msg:gnss1_age instead.")
  (gnss1_age m))

(cl:ensure-generic-function 'gnss2_state-val :lambda-list '(m))
(cl:defmethod gnss2_state-val ((m <gnssant>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:gnss2_state-val is deprecated.  Use fixposition_driver_ros1-msg:gnss2_state instead.")
  (gnss2_state m))

(cl:ensure-generic-function 'gnss2_power-val :lambda-list '(m))
(cl:defmethod gnss2_power-val ((m <gnssant>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:gnss2_power-val is deprecated.  Use fixposition_driver_ros1-msg:gnss2_power instead.")
  (gnss2_power m))

(cl:ensure-generic-function 'gnss2_age-val :lambda-list '(m))
(cl:defmethod gnss2_age-val ((m <gnssant>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:gnss2_age-val is deprecated.  Use fixposition_driver_ros1-msg:gnss2_age instead.")
  (gnss2_age m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gnssant>) ostream)
  "Serializes a message object of type '<gnssant>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gnss1_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gnss1_state))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gnss1_power))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gnss1_power))
  (cl:let* ((signed (cl:slot-value msg 'gnss1_age)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gnss2_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gnss2_state))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gnss2_power))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gnss2_power))
  (cl:let* ((signed (cl:slot-value msg 'gnss2_age)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gnssant>) istream)
  "Deserializes a message object of type '<gnssant>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gnss1_state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gnss1_state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gnss1_power) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gnss1_power) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gnss1_age) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gnss2_state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gnss2_state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gnss2_power) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gnss2_power) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gnss2_age) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gnssant>)))
  "Returns string type for a message object of type '<gnssant>"
  "fixposition_driver_ros1/gnssant")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gnssant)))
  "Returns string type for a message object of type 'gnssant"
  "fixposition_driver_ros1/gnssant")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gnssant>)))
  "Returns md5sum for a message object of type '<gnssant>"
  "3efa4edf5957d49615254580afca41bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gnssant)))
  "Returns md5sum for a message object of type 'gnssant"
  "3efa4edf5957d49615254580afca41bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gnssant>)))
  "Returns full string definition for message of type '<gnssant>"
  (cl:format cl:nil "####################################################################################################~%#~%#    Copyright (c) 2023  ___     ___~%#                       \\\\  \\\\  /  /~%#                        \\\\  \\\\/  /~%#                         /  /\\\\  \\\\~%#                        /__/  \\\\__\\\\  Fixposition AG~%#~%####################################################################################################~%#~%# Fixposition FP_A-GNSSANT Message~%#~%#~%####################################################################################################~%~%Header header~%string gnss1_state   # GNSS1 antenna state~%string gnss1_power   # GNSS1 antenna power~%int32  gnss1_age     # Time since gnss1_state or gnss1_power information last changed~%string gnss2_state   # GNSS2 antenna state~%string gnss2_power   # GNSS2 antenna power~%int32  gnss2_age     # Time since gnss2_state or gnss2_power information last changed~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gnssant)))
  "Returns full string definition for message of type 'gnssant"
  (cl:format cl:nil "####################################################################################################~%#~%#    Copyright (c) 2023  ___     ___~%#                       \\\\  \\\\  /  /~%#                        \\\\  \\\\/  /~%#                         /  /\\\\  \\\\~%#                        /__/  \\\\__\\\\  Fixposition AG~%#~%####################################################################################################~%#~%# Fixposition FP_A-GNSSANT Message~%#~%#~%####################################################################################################~%~%Header header~%string gnss1_state   # GNSS1 antenna state~%string gnss1_power   # GNSS1 antenna power~%int32  gnss1_age     # Time since gnss1_state or gnss1_power information last changed~%string gnss2_state   # GNSS2 antenna state~%string gnss2_power   # GNSS2 antenna power~%int32  gnss2_age     # Time since gnss2_state or gnss2_power information last changed~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gnssant>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'gnss1_state))
     4 (cl:length (cl:slot-value msg 'gnss1_power))
     4
     4 (cl:length (cl:slot-value msg 'gnss2_state))
     4 (cl:length (cl:slot-value msg 'gnss2_power))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gnssant>))
  "Converts a ROS message object to a list"
  (cl:list 'gnssant
    (cl:cons ':header (header msg))
    (cl:cons ':gnss1_state (gnss1_state msg))
    (cl:cons ':gnss1_power (gnss1_power msg))
    (cl:cons ':gnss1_age (gnss1_age msg))
    (cl:cons ':gnss2_state (gnss2_state msg))
    (cl:cons ':gnss2_power (gnss2_power msg))
    (cl:cons ':gnss2_age (gnss2_age msg))
))
