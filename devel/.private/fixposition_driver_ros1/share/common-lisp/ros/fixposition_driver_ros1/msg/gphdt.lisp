; Auto-generated. Do not edit!


(cl:in-package fixposition_driver_ros1-msg)


;//! \htmlinclude gphdt.msg.html

(cl:defclass <gphdt> (roslisp-msg-protocol:ros-message)
  ((heading
    :reader heading
    :initarg :heading
    :type cl:float
    :initform 0.0)
   (true_ind
    :reader true_ind
    :initarg :true_ind
    :type cl:integer
    :initform 0))
)

(cl:defclass gphdt (<gphdt>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gphdt>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gphdt)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fixposition_driver_ros1-msg:<gphdt> is deprecated: use fixposition_driver_ros1-msg:gphdt instead.")))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <gphdt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:heading-val is deprecated.  Use fixposition_driver_ros1-msg:heading instead.")
  (heading m))

(cl:ensure-generic-function 'true_ind-val :lambda-list '(m))
(cl:defmethod true_ind-val ((m <gphdt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:true_ind-val is deprecated.  Use fixposition_driver_ros1-msg:true_ind instead.")
  (true_ind m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gphdt>) ostream)
  "Serializes a message object of type '<gphdt>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'true_ind)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gphdt>) istream)
  "Deserializes a message object of type '<gphdt>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'true_ind)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gphdt>)))
  "Returns string type for a message object of type '<gphdt>"
  "fixposition_driver_ros1/gphdt")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gphdt)))
  "Returns string type for a message object of type 'gphdt"
  "fixposition_driver_ros1/gphdt")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gphdt>)))
  "Returns md5sum for a message object of type '<gphdt>"
  "f570455b15548c6d0b34662ea781cd6c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gphdt)))
  "Returns md5sum for a message object of type 'gphdt"
  "f570455b15548c6d0b34662ea781cd6c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gphdt>)))
  "Returns full string definition for message of type '<gphdt>"
  (cl:format cl:nil "####################################################################################################~%#~%#    Copyright (c) 2023  ___     ___~%#                       \\\\  \\\\  /  /~%#                        \\\\  \\\\/  /~%#                         /  /\\\\  \\\\~%#                        /__/  \\\\__\\\\  Fixposition AG~%#~%####################################################################################################~%#~%# Fixposition NMEA-GP-HDT Message~%#~%#~%####################################################################################################~%~%# Format | Field    | Unit  | Description~%# -------|----------|-------|---------------|~%float64    heading  # [deg] | True heading.~%char       true_ind # [-]   | Always T.~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gphdt)))
  "Returns full string definition for message of type 'gphdt"
  (cl:format cl:nil "####################################################################################################~%#~%#    Copyright (c) 2023  ___     ___~%#                       \\\\  \\\\  /  /~%#                        \\\\  \\\\/  /~%#                         /  /\\\\  \\\\~%#                        /__/  \\\\__\\\\  Fixposition AG~%#~%####################################################################################################~%#~%# Fixposition NMEA-GP-HDT Message~%#~%#~%####################################################################################################~%~%# Format | Field    | Unit  | Description~%# -------|----------|-------|---------------|~%float64    heading  # [deg] | True heading.~%char       true_ind # [-]   | Always T.~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gphdt>))
  (cl:+ 0
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gphdt>))
  "Converts a ROS message object to a list"
  (cl:list 'gphdt
    (cl:cons ':heading (heading msg))
    (cl:cons ':true_ind (true_ind msg))
))
