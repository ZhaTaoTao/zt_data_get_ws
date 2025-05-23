; Auto-generated. Do not edit!


(cl:in-package fixposition_driver_ros1-msg)


;//! \htmlinclude eoe.msg.html

(cl:defclass <eoe> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (epoch
    :reader epoch
    :initarg :epoch
    :type cl:string
    :initform ""))
)

(cl:defclass eoe (<eoe>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <eoe>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'eoe)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fixposition_driver_ros1-msg:<eoe> is deprecated: use fixposition_driver_ros1-msg:eoe instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <eoe>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:header-val is deprecated.  Use fixposition_driver_ros1-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'epoch-val :lambda-list '(m))
(cl:defmethod epoch-val ((m <eoe>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:epoch-val is deprecated.  Use fixposition_driver_ros1-msg:epoch instead.")
  (epoch m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <eoe>) ostream)
  "Serializes a message object of type '<eoe>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'epoch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'epoch))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <eoe>) istream)
  "Deserializes a message object of type '<eoe>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'epoch) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'epoch) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<eoe>)))
  "Returns string type for a message object of type '<eoe>"
  "fixposition_driver_ros1/eoe")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'eoe)))
  "Returns string type for a message object of type 'eoe"
  "fixposition_driver_ros1/eoe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<eoe>)))
  "Returns md5sum for a message object of type '<eoe>"
  "3d96e79f96082138c765108d4b32fdf5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'eoe)))
  "Returns md5sum for a message object of type 'eoe"
  "3d96e79f96082138c765108d4b32fdf5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<eoe>)))
  "Returns full string definition for message of type '<eoe>"
  (cl:format cl:nil "####################################################################################################~%#~%#    Copyright (c) 2023  ___     ___~%#                       \\\\  \\\\  /  /~%#                        \\\\  \\\\/  /~%#                         /  /\\\\  \\\\~%#                        /__/  \\\\__\\\\  Fixposition AG~%#~%####################################################################################################~%#~%# Fixposition FP_A-EOE Message~%#~%#~%####################################################################################################~%~%Header header~%string epoch   # Indicates which epoch ended (FUSION, GNSS, GNSS1 or GNSS2)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'eoe)))
  "Returns full string definition for message of type 'eoe"
  (cl:format cl:nil "####################################################################################################~%#~%#    Copyright (c) 2023  ___     ___~%#                       \\\\  \\\\  /  /~%#                        \\\\  \\\\/  /~%#                         /  /\\\\  \\\\~%#                        /__/  \\\\__\\\\  Fixposition AG~%#~%####################################################################################################~%#~%# Fixposition FP_A-EOE Message~%#~%#~%####################################################################################################~%~%Header header~%string epoch   # Indicates which epoch ended (FUSION, GNSS, GNSS1 or GNSS2)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <eoe>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'epoch))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <eoe>))
  "Converts a ROS message object to a list"
  (cl:list 'eoe
    (cl:cons ':header (header msg))
    (cl:cons ':epoch (epoch msg))
))
