; Auto-generated. Do not edit!


(cl:in-package fixposition_driver_ros1-msg)


;//! \htmlinclude CovWarn.msg.html

(cl:defclass <CovWarn> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (jump
    :reader jump
    :initarg :jump
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (covariance
    :reader covariance
    :initarg :covariance
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass CovWarn (<CovWarn>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CovWarn>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CovWarn)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fixposition_driver_ros1-msg:<CovWarn> is deprecated: use fixposition_driver_ros1-msg:CovWarn instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CovWarn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:header-val is deprecated.  Use fixposition_driver_ros1-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'jump-val :lambda-list '(m))
(cl:defmethod jump-val ((m <CovWarn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:jump-val is deprecated.  Use fixposition_driver_ros1-msg:jump instead.")
  (jump m))

(cl:ensure-generic-function 'covariance-val :lambda-list '(m))
(cl:defmethod covariance-val ((m <CovWarn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:covariance-val is deprecated.  Use fixposition_driver_ros1-msg:covariance instead.")
  (covariance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CovWarn>) ostream)
  "Serializes a message object of type '<CovWarn>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'jump) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'covariance) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CovWarn>) istream)
  "Deserializes a message object of type '<CovWarn>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'jump) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'covariance) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CovWarn>)))
  "Returns string type for a message object of type '<CovWarn>"
  "fixposition_driver_ros1/CovWarn")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CovWarn)))
  "Returns string type for a message object of type 'CovWarn"
  "fixposition_driver_ros1/CovWarn")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CovWarn>)))
  "Returns md5sum for a message object of type '<CovWarn>"
  "de2143400b8bddaa70419e57cc765055")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CovWarn)))
  "Returns md5sum for a message object of type 'CovWarn"
  "de2143400b8bddaa70419e57cc765055")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CovWarn>)))
  "Returns full string definition for message of type '<CovWarn>"
  (cl:format cl:nil "####################################################################################################~%#~%#    Copyright (c) 2023  ___     ___~%#                       \\\\  \\\\  /  /~%#                        \\\\  \\\\/  /~%#                         /  /\\\\  \\\\~%#                        /__/  \\\\__\\\\  Fixposition AG~%#~%####################################################################################################~%#~%# Fixposition Covariance Warning Message~%#~%#~%####################################################################################################~%~%Header header~%geometry_msgs/Vector3 jump         # Position change~%geometry_msgs/Vector3 covariance   # Covariance~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CovWarn)))
  "Returns full string definition for message of type 'CovWarn"
  (cl:format cl:nil "####################################################################################################~%#~%#    Copyright (c) 2023  ___     ___~%#                       \\\\  \\\\  /  /~%#                        \\\\  \\\\/  /~%#                         /  /\\\\  \\\\~%#                        /__/  \\\\__\\\\  Fixposition AG~%#~%####################################################################################################~%#~%# Fixposition Covariance Warning Message~%#~%#~%####################################################################################################~%~%Header header~%geometry_msgs/Vector3 jump         # Position change~%geometry_msgs/Vector3 covariance   # Covariance~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CovWarn>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'jump))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'covariance))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CovWarn>))
  "Converts a ROS message object to a list"
  (cl:list 'CovWarn
    (cl:cons ':header (header msg))
    (cl:cons ':jump (jump msg))
    (cl:cons ':covariance (covariance msg))
))
