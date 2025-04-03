; Auto-generated. Do not edit!


(cl:in-package fixposition_driver_ros1-msg)


;//! \htmlinclude gnsscorr.msg.html

(cl:defclass <gnsscorr> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (gnss1_fix
    :reader gnss1_fix
    :initarg :gnss1_fix
    :type cl:fixnum
    :initform 0)
   (gnss1_nsig_l1
    :reader gnss1_nsig_l1
    :initarg :gnss1_nsig_l1
    :type cl:fixnum
    :initform 0)
   (gnss1_nsig_l2
    :reader gnss1_nsig_l2
    :initarg :gnss1_nsig_l2
    :type cl:fixnum
    :initform 0)
   (gnss2_fix
    :reader gnss2_fix
    :initarg :gnss2_fix
    :type cl:fixnum
    :initform 0)
   (gnss2_nsig_l1
    :reader gnss2_nsig_l1
    :initarg :gnss2_nsig_l1
    :type cl:fixnum
    :initform 0)
   (gnss2_nsig_l2
    :reader gnss2_nsig_l2
    :initarg :gnss2_nsig_l2
    :type cl:fixnum
    :initform 0)
   (corr_latency
    :reader corr_latency
    :initarg :corr_latency
    :type cl:float
    :initform 0.0)
   (corr_update_rate
    :reader corr_update_rate
    :initarg :corr_update_rate
    :type cl:float
    :initform 0.0)
   (corr_data_rate
    :reader corr_data_rate
    :initarg :corr_data_rate
    :type cl:float
    :initform 0.0)
   (corr_msg_rate
    :reader corr_msg_rate
    :initarg :corr_msg_rate
    :type cl:float
    :initform 0.0)
   (sta_id
    :reader sta_id
    :initarg :sta_id
    :type cl:fixnum
    :initform 0)
   (sta_llh
    :reader sta_llh
    :initarg :sta_llh
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (sta_dist
    :reader sta_dist
    :initarg :sta_dist
    :type cl:integer
    :initform 0))
)

(cl:defclass gnsscorr (<gnsscorr>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gnsscorr>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gnsscorr)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fixposition_driver_ros1-msg:<gnsscorr> is deprecated: use fixposition_driver_ros1-msg:gnsscorr instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <gnsscorr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:header-val is deprecated.  Use fixposition_driver_ros1-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'gnss1_fix-val :lambda-list '(m))
(cl:defmethod gnss1_fix-val ((m <gnsscorr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:gnss1_fix-val is deprecated.  Use fixposition_driver_ros1-msg:gnss1_fix instead.")
  (gnss1_fix m))

(cl:ensure-generic-function 'gnss1_nsig_l1-val :lambda-list '(m))
(cl:defmethod gnss1_nsig_l1-val ((m <gnsscorr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:gnss1_nsig_l1-val is deprecated.  Use fixposition_driver_ros1-msg:gnss1_nsig_l1 instead.")
  (gnss1_nsig_l1 m))

(cl:ensure-generic-function 'gnss1_nsig_l2-val :lambda-list '(m))
(cl:defmethod gnss1_nsig_l2-val ((m <gnsscorr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:gnss1_nsig_l2-val is deprecated.  Use fixposition_driver_ros1-msg:gnss1_nsig_l2 instead.")
  (gnss1_nsig_l2 m))

(cl:ensure-generic-function 'gnss2_fix-val :lambda-list '(m))
(cl:defmethod gnss2_fix-val ((m <gnsscorr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:gnss2_fix-val is deprecated.  Use fixposition_driver_ros1-msg:gnss2_fix instead.")
  (gnss2_fix m))

(cl:ensure-generic-function 'gnss2_nsig_l1-val :lambda-list '(m))
(cl:defmethod gnss2_nsig_l1-val ((m <gnsscorr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:gnss2_nsig_l1-val is deprecated.  Use fixposition_driver_ros1-msg:gnss2_nsig_l1 instead.")
  (gnss2_nsig_l1 m))

(cl:ensure-generic-function 'gnss2_nsig_l2-val :lambda-list '(m))
(cl:defmethod gnss2_nsig_l2-val ((m <gnsscorr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:gnss2_nsig_l2-val is deprecated.  Use fixposition_driver_ros1-msg:gnss2_nsig_l2 instead.")
  (gnss2_nsig_l2 m))

(cl:ensure-generic-function 'corr_latency-val :lambda-list '(m))
(cl:defmethod corr_latency-val ((m <gnsscorr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:corr_latency-val is deprecated.  Use fixposition_driver_ros1-msg:corr_latency instead.")
  (corr_latency m))

(cl:ensure-generic-function 'corr_update_rate-val :lambda-list '(m))
(cl:defmethod corr_update_rate-val ((m <gnsscorr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:corr_update_rate-val is deprecated.  Use fixposition_driver_ros1-msg:corr_update_rate instead.")
  (corr_update_rate m))

(cl:ensure-generic-function 'corr_data_rate-val :lambda-list '(m))
(cl:defmethod corr_data_rate-val ((m <gnsscorr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:corr_data_rate-val is deprecated.  Use fixposition_driver_ros1-msg:corr_data_rate instead.")
  (corr_data_rate m))

(cl:ensure-generic-function 'corr_msg_rate-val :lambda-list '(m))
(cl:defmethod corr_msg_rate-val ((m <gnsscorr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:corr_msg_rate-val is deprecated.  Use fixposition_driver_ros1-msg:corr_msg_rate instead.")
  (corr_msg_rate m))

(cl:ensure-generic-function 'sta_id-val :lambda-list '(m))
(cl:defmethod sta_id-val ((m <gnsscorr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:sta_id-val is deprecated.  Use fixposition_driver_ros1-msg:sta_id instead.")
  (sta_id m))

(cl:ensure-generic-function 'sta_llh-val :lambda-list '(m))
(cl:defmethod sta_llh-val ((m <gnsscorr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:sta_llh-val is deprecated.  Use fixposition_driver_ros1-msg:sta_llh instead.")
  (sta_llh m))

(cl:ensure-generic-function 'sta_dist-val :lambda-list '(m))
(cl:defmethod sta_dist-val ((m <gnsscorr>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:sta_dist-val is deprecated.  Use fixposition_driver_ros1-msg:sta_dist instead.")
  (sta_dist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gnsscorr>) ostream)
  "Serializes a message object of type '<gnsscorr>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'gnss1_fix)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gnss1_nsig_l1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gnss1_nsig_l2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gnss2_fix)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gnss2_nsig_l1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gnss2_nsig_l2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'corr_latency))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'corr_update_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'corr_data_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'corr_msg_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'sta_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sta_llh) ostream)
  (cl:let* ((signed (cl:slot-value msg 'sta_dist)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gnsscorr>) istream)
  "Deserializes a message object of type '<gnsscorr>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gnss1_fix) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gnss1_nsig_l1) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gnss1_nsig_l2) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gnss2_fix) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gnss2_nsig_l1) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gnss2_nsig_l2) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'corr_latency) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'corr_update_rate) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'corr_data_rate) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'corr_msg_rate) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sta_id) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sta_llh) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sta_dist) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gnsscorr>)))
  "Returns string type for a message object of type '<gnsscorr>"
  "fixposition_driver_ros1/gnsscorr")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gnsscorr)))
  "Returns string type for a message object of type 'gnsscorr"
  "fixposition_driver_ros1/gnsscorr")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gnsscorr>)))
  "Returns md5sum for a message object of type '<gnsscorr>"
  "b77ad2e5b59b9f0261c4a7de8a44a073")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gnsscorr)))
  "Returns md5sum for a message object of type 'gnsscorr"
  "b77ad2e5b59b9f0261c4a7de8a44a073")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gnsscorr>)))
  "Returns full string definition for message of type '<gnsscorr>"
  (cl:format cl:nil "####################################################################################################~%#~%#    Copyright (c) 2023  ___     ___~%#                       \\\\  \\\\  /  /~%#                        \\\\  \\\\/  /~%#                         /  /\\\\  \\\\~%#                        /__/  \\\\__\\\\  Fixposition AG~%#~%####################################################################################################~%#~%# Fixposition FP_A-GNSSCORR Message~%#~%#~%####################################################################################################~%~%Header header~%int16 gnss1_fix          # GNSS1 fix status~%int16 gnss1_nsig_l1      # Number of L1 signals with correction data tracked by GNSS1~%int16 gnss1_nsig_l2      # Number of L2 signals with correction data tracked by GNSS1~%int16 gnss2_fix          # GNSS2 fix status~%int16 gnss2_nsig_l1      # Number of L1 signals with correction data tracked by GNSS2~%int16 gnss2_nsig_l2      # Number of L2 signals with correction data tracked by GNSS2~%~%float64 corr_latency       # Average correction data latency (10s window)~%float64 corr_update_rate   # Average correction update rate (10s window)~%float64 corr_data_rate     # Average correction data rate (10s window)~%float64 corr_msg_rate      # Average correction message rate (10s window)~%~%int16 sta_id                    # Correction station ID, range 0–4095~%geometry_msgs/Vector3 sta_llh   # Correction station LLH position (latitude, longitude, height)~%int32 sta_dist                  # Correction station baseline length~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gnsscorr)))
  "Returns full string definition for message of type 'gnsscorr"
  (cl:format cl:nil "####################################################################################################~%#~%#    Copyright (c) 2023  ___     ___~%#                       \\\\  \\\\  /  /~%#                        \\\\  \\\\/  /~%#                         /  /\\\\  \\\\~%#                        /__/  \\\\__\\\\  Fixposition AG~%#~%####################################################################################################~%#~%# Fixposition FP_A-GNSSCORR Message~%#~%#~%####################################################################################################~%~%Header header~%int16 gnss1_fix          # GNSS1 fix status~%int16 gnss1_nsig_l1      # Number of L1 signals with correction data tracked by GNSS1~%int16 gnss1_nsig_l2      # Number of L2 signals with correction data tracked by GNSS1~%int16 gnss2_fix          # GNSS2 fix status~%int16 gnss2_nsig_l1      # Number of L1 signals with correction data tracked by GNSS2~%int16 gnss2_nsig_l2      # Number of L2 signals with correction data tracked by GNSS2~%~%float64 corr_latency       # Average correction data latency (10s window)~%float64 corr_update_rate   # Average correction update rate (10s window)~%float64 corr_data_rate     # Average correction data rate (10s window)~%float64 corr_msg_rate      # Average correction message rate (10s window)~%~%int16 sta_id                    # Correction station ID, range 0–4095~%geometry_msgs/Vector3 sta_llh   # Correction station LLH position (latitude, longitude, height)~%int32 sta_dist                  # Correction station baseline length~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gnsscorr>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     2
     2
     2
     2
     2
     8
     8
     8
     8
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sta_llh))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gnsscorr>))
  "Converts a ROS message object to a list"
  (cl:list 'gnsscorr
    (cl:cons ':header (header msg))
    (cl:cons ':gnss1_fix (gnss1_fix msg))
    (cl:cons ':gnss1_nsig_l1 (gnss1_nsig_l1 msg))
    (cl:cons ':gnss1_nsig_l2 (gnss1_nsig_l2 msg))
    (cl:cons ':gnss2_fix (gnss2_fix msg))
    (cl:cons ':gnss2_nsig_l1 (gnss2_nsig_l1 msg))
    (cl:cons ':gnss2_nsig_l2 (gnss2_nsig_l2 msg))
    (cl:cons ':corr_latency (corr_latency msg))
    (cl:cons ':corr_update_rate (corr_update_rate msg))
    (cl:cons ':corr_data_rate (corr_data_rate msg))
    (cl:cons ':corr_msg_rate (corr_msg_rate msg))
    (cl:cons ':sta_id (sta_id msg))
    (cl:cons ':sta_llh (sta_llh msg))
    (cl:cons ':sta_dist (sta_dist msg))
))
