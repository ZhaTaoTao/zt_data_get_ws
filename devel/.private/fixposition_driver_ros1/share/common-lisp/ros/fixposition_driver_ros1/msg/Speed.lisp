; Auto-generated. Do not edit!


(cl:in-package fixposition_driver_ros1-msg)


;//! \htmlinclude Speed.msg.html

(cl:defclass <Speed> (roslisp-msg-protocol:ros-message)
  ((sensors
    :reader sensors
    :initarg :sensors
    :type (cl:vector fixposition_driver_ros1-msg:WheelSensor)
   :initform (cl:make-array 0 :element-type 'fixposition_driver_ros1-msg:WheelSensor :initial-element (cl:make-instance 'fixposition_driver_ros1-msg:WheelSensor))))
)

(cl:defclass Speed (<Speed>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Speed>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Speed)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fixposition_driver_ros1-msg:<Speed> is deprecated: use fixposition_driver_ros1-msg:Speed instead.")))

(cl:ensure-generic-function 'sensors-val :lambda-list '(m))
(cl:defmethod sensors-val ((m <Speed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:sensors-val is deprecated.  Use fixposition_driver_ros1-msg:sensors instead.")
  (sensors m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Speed>) ostream)
  "Serializes a message object of type '<Speed>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sensors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'sensors))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Speed>) istream)
  "Deserializes a message object of type '<Speed>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sensors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sensors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'fixposition_driver_ros1-msg:WheelSensor))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Speed>)))
  "Returns string type for a message object of type '<Speed>"
  "fixposition_driver_ros1/Speed")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Speed)))
  "Returns string type for a message object of type 'Speed"
  "fixposition_driver_ros1/Speed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Speed>)))
  "Returns md5sum for a message object of type '<Speed>"
  "c35c230ca1b330732decce9c593d3ae9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Speed)))
  "Returns md5sum for a message object of type 'Speed"
  "c35c230ca1b330732decce9c593d3ae9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Speed>)))
  "Returns full string definition for message of type '<Speed>"
  (cl:format cl:nil "####################################################################################################~%#~%#    Copyright (c) 2023  ___     ___~%#                       \\\\  \\\\  /  /~%#                        \\\\  \\\\/  /~%#                         /  /\\\\  \\\\~%#                        /__/  \\\\__\\\\  Fixposition AG~%#~%####################################################################################################~%#~%# Wheel speed input to Fixposition ROS Driver~%#~%#~%####################################################################################################~%~%# Velocity values for one or several WheelSensors~%fixposition_driver_ros1/WheelSensor[] sensors~%~%================================================================================~%MSG: fixposition_driver_ros1/WheelSensor~%####################################################################################################~%#~%#    Copyright (c) 2023  ___     ___~%#                       \\\\  \\\\  /  /~%#                        \\\\  \\\\/  /~%#                         /  /\\\\  \\\\~%#                        /__/  \\\\__\\\\  Fixposition AG~%#~%####################################################################################################~%#~%# Individual wheelspeed measurement~%#~%#~%####################################################################################################~%# Standard metadata~%std_msgs/Header header~%~%# Location of the wheelspeed measurement (one of: RC, FR, FL, RR, RL)~%string location~%~%# Velocity values in [mm/s] as integer 32bit~%int32 vx~%int32 vy~%int32 vz~%~%# Velocity validity~%bool vx_valid~%bool vy_valid~%bool vz_valid~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Speed)))
  "Returns full string definition for message of type 'Speed"
  (cl:format cl:nil "####################################################################################################~%#~%#    Copyright (c) 2023  ___     ___~%#                       \\\\  \\\\  /  /~%#                        \\\\  \\\\/  /~%#                         /  /\\\\  \\\\~%#                        /__/  \\\\__\\\\  Fixposition AG~%#~%####################################################################################################~%#~%# Wheel speed input to Fixposition ROS Driver~%#~%#~%####################################################################################################~%~%# Velocity values for one or several WheelSensors~%fixposition_driver_ros1/WheelSensor[] sensors~%~%================================================================================~%MSG: fixposition_driver_ros1/WheelSensor~%####################################################################################################~%#~%#    Copyright (c) 2023  ___     ___~%#                       \\\\  \\\\  /  /~%#                        \\\\  \\\\/  /~%#                         /  /\\\\  \\\\~%#                        /__/  \\\\__\\\\  Fixposition AG~%#~%####################################################################################################~%#~%# Individual wheelspeed measurement~%#~%#~%####################################################################################################~%# Standard metadata~%std_msgs/Header header~%~%# Location of the wheelspeed measurement (one of: RC, FR, FL, RR, RL)~%string location~%~%# Velocity values in [mm/s] as integer 32bit~%int32 vx~%int32 vy~%int32 vz~%~%# Velocity validity~%bool vx_valid~%bool vy_valid~%bool vz_valid~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Speed>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sensors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Speed>))
  "Converts a ROS message object to a list"
  (cl:list 'Speed
    (cl:cons ':sensors (sensors msg))
))
