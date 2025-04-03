; Auto-generated. Do not edit!


(cl:in-package fixposition_driver_ros1-msg)


;//! \htmlinclude odomstatus.msg.html

(cl:defclass <odomstatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (init_status
    :reader init_status
    :initarg :init_status
    :type cl:fixnum
    :initform 0)
   (fusion_imu
    :reader fusion_imu
    :initarg :fusion_imu
    :type cl:fixnum
    :initform 0)
   (fusion_gnss1
    :reader fusion_gnss1
    :initarg :fusion_gnss1
    :type cl:fixnum
    :initform 0)
   (fusion_gnss2
    :reader fusion_gnss2
    :initarg :fusion_gnss2
    :type cl:fixnum
    :initform 0)
   (fusion_corr
    :reader fusion_corr
    :initarg :fusion_corr
    :type cl:fixnum
    :initform 0)
   (fusion_cam1
    :reader fusion_cam1
    :initarg :fusion_cam1
    :type cl:fixnum
    :initform 0)
   (fusion_ws
    :reader fusion_ws
    :initarg :fusion_ws
    :type cl:fixnum
    :initform 0)
   (fusion_markers
    :reader fusion_markers
    :initarg :fusion_markers
    :type cl:fixnum
    :initform 0)
   (imu_status
    :reader imu_status
    :initarg :imu_status
    :type cl:fixnum
    :initform 0)
   (imu_noise
    :reader imu_noise
    :initarg :imu_noise
    :type cl:fixnum
    :initform 0)
   (imu_conv
    :reader imu_conv
    :initarg :imu_conv
    :type cl:fixnum
    :initform 0)
   (gnss1_status
    :reader gnss1_status
    :initarg :gnss1_status
    :type cl:fixnum
    :initform 0)
   (gnss2_status
    :reader gnss2_status
    :initarg :gnss2_status
    :type cl:fixnum
    :initform 0)
   (baseline_status
    :reader baseline_status
    :initarg :baseline_status
    :type cl:fixnum
    :initform 0)
   (corr_status
    :reader corr_status
    :initarg :corr_status
    :type cl:fixnum
    :initform 0)
   (cam1_status
    :reader cam1_status
    :initarg :cam1_status
    :type cl:fixnum
    :initform 0)
   (ws_status
    :reader ws_status
    :initarg :ws_status
    :type cl:fixnum
    :initform 0)
   (ws_conv
    :reader ws_conv
    :initarg :ws_conv
    :type cl:fixnum
    :initform 0)
   (markers_status
    :reader markers_status
    :initarg :markers_status
    :type cl:fixnum
    :initform 0)
   (markers_conv
    :reader markers_conv
    :initarg :markers_conv
    :type cl:fixnum
    :initform 0))
)

(cl:defclass odomstatus (<odomstatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <odomstatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'odomstatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fixposition_driver_ros1-msg:<odomstatus> is deprecated: use fixposition_driver_ros1-msg:odomstatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <odomstatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:header-val is deprecated.  Use fixposition_driver_ros1-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'init_status-val :lambda-list '(m))
(cl:defmethod init_status-val ((m <odomstatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:init_status-val is deprecated.  Use fixposition_driver_ros1-msg:init_status instead.")
  (init_status m))

(cl:ensure-generic-function 'fusion_imu-val :lambda-list '(m))
(cl:defmethod fusion_imu-val ((m <odomstatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:fusion_imu-val is deprecated.  Use fixposition_driver_ros1-msg:fusion_imu instead.")
  (fusion_imu m))

(cl:ensure-generic-function 'fusion_gnss1-val :lambda-list '(m))
(cl:defmethod fusion_gnss1-val ((m <odomstatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:fusion_gnss1-val is deprecated.  Use fixposition_driver_ros1-msg:fusion_gnss1 instead.")
  (fusion_gnss1 m))

(cl:ensure-generic-function 'fusion_gnss2-val :lambda-list '(m))
(cl:defmethod fusion_gnss2-val ((m <odomstatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:fusion_gnss2-val is deprecated.  Use fixposition_driver_ros1-msg:fusion_gnss2 instead.")
  (fusion_gnss2 m))

(cl:ensure-generic-function 'fusion_corr-val :lambda-list '(m))
(cl:defmethod fusion_corr-val ((m <odomstatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:fusion_corr-val is deprecated.  Use fixposition_driver_ros1-msg:fusion_corr instead.")
  (fusion_corr m))

(cl:ensure-generic-function 'fusion_cam1-val :lambda-list '(m))
(cl:defmethod fusion_cam1-val ((m <odomstatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:fusion_cam1-val is deprecated.  Use fixposition_driver_ros1-msg:fusion_cam1 instead.")
  (fusion_cam1 m))

(cl:ensure-generic-function 'fusion_ws-val :lambda-list '(m))
(cl:defmethod fusion_ws-val ((m <odomstatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:fusion_ws-val is deprecated.  Use fixposition_driver_ros1-msg:fusion_ws instead.")
  (fusion_ws m))

(cl:ensure-generic-function 'fusion_markers-val :lambda-list '(m))
(cl:defmethod fusion_markers-val ((m <odomstatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:fusion_markers-val is deprecated.  Use fixposition_driver_ros1-msg:fusion_markers instead.")
  (fusion_markers m))

(cl:ensure-generic-function 'imu_status-val :lambda-list '(m))
(cl:defmethod imu_status-val ((m <odomstatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:imu_status-val is deprecated.  Use fixposition_driver_ros1-msg:imu_status instead.")
  (imu_status m))

(cl:ensure-generic-function 'imu_noise-val :lambda-list '(m))
(cl:defmethod imu_noise-val ((m <odomstatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:imu_noise-val is deprecated.  Use fixposition_driver_ros1-msg:imu_noise instead.")
  (imu_noise m))

(cl:ensure-generic-function 'imu_conv-val :lambda-list '(m))
(cl:defmethod imu_conv-val ((m <odomstatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:imu_conv-val is deprecated.  Use fixposition_driver_ros1-msg:imu_conv instead.")
  (imu_conv m))

(cl:ensure-generic-function 'gnss1_status-val :lambda-list '(m))
(cl:defmethod gnss1_status-val ((m <odomstatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:gnss1_status-val is deprecated.  Use fixposition_driver_ros1-msg:gnss1_status instead.")
  (gnss1_status m))

(cl:ensure-generic-function 'gnss2_status-val :lambda-list '(m))
(cl:defmethod gnss2_status-val ((m <odomstatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:gnss2_status-val is deprecated.  Use fixposition_driver_ros1-msg:gnss2_status instead.")
  (gnss2_status m))

(cl:ensure-generic-function 'baseline_status-val :lambda-list '(m))
(cl:defmethod baseline_status-val ((m <odomstatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:baseline_status-val is deprecated.  Use fixposition_driver_ros1-msg:baseline_status instead.")
  (baseline_status m))

(cl:ensure-generic-function 'corr_status-val :lambda-list '(m))
(cl:defmethod corr_status-val ((m <odomstatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:corr_status-val is deprecated.  Use fixposition_driver_ros1-msg:corr_status instead.")
  (corr_status m))

(cl:ensure-generic-function 'cam1_status-val :lambda-list '(m))
(cl:defmethod cam1_status-val ((m <odomstatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:cam1_status-val is deprecated.  Use fixposition_driver_ros1-msg:cam1_status instead.")
  (cam1_status m))

(cl:ensure-generic-function 'ws_status-val :lambda-list '(m))
(cl:defmethod ws_status-val ((m <odomstatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:ws_status-val is deprecated.  Use fixposition_driver_ros1-msg:ws_status instead.")
  (ws_status m))

(cl:ensure-generic-function 'ws_conv-val :lambda-list '(m))
(cl:defmethod ws_conv-val ((m <odomstatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:ws_conv-val is deprecated.  Use fixposition_driver_ros1-msg:ws_conv instead.")
  (ws_conv m))

(cl:ensure-generic-function 'markers_status-val :lambda-list '(m))
(cl:defmethod markers_status-val ((m <odomstatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:markers_status-val is deprecated.  Use fixposition_driver_ros1-msg:markers_status instead.")
  (markers_status m))

(cl:ensure-generic-function 'markers_conv-val :lambda-list '(m))
(cl:defmethod markers_conv-val ((m <odomstatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fixposition_driver_ros1-msg:markers_conv-val is deprecated.  Use fixposition_driver_ros1-msg:markers_conv instead.")
  (markers_conv m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <odomstatus>) ostream)
  "Serializes a message object of type '<odomstatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'init_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'fusion_imu)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'fusion_gnss1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'fusion_gnss2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'fusion_corr)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'fusion_cam1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'fusion_ws)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'fusion_markers)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'imu_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'imu_noise)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'imu_conv)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gnss1_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gnss2_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'baseline_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'corr_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cam1_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ws_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'ws_conv)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'markers_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'markers_conv)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <odomstatus>) istream)
  "Deserializes a message object of type '<odomstatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'init_status) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fusion_imu) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fusion_gnss1) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fusion_gnss2) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fusion_corr) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fusion_cam1) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fusion_ws) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fusion_markers) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'imu_status) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'imu_noise) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'imu_conv) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gnss1_status) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gnss2_status) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'baseline_status) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'corr_status) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cam1_status) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ws_status) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ws_conv) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'markers_status) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'markers_conv) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<odomstatus>)))
  "Returns string type for a message object of type '<odomstatus>"
  "fixposition_driver_ros1/odomstatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'odomstatus)))
  "Returns string type for a message object of type 'odomstatus"
  "fixposition_driver_ros1/odomstatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<odomstatus>)))
  "Returns md5sum for a message object of type '<odomstatus>"
  "307cfe184ec2b75acdc3f76049315683")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'odomstatus)))
  "Returns md5sum for a message object of type 'odomstatus"
  "307cfe184ec2b75acdc3f76049315683")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<odomstatus>)))
  "Returns full string definition for message of type '<odomstatus>"
  (cl:format cl:nil "####################################################################################################~%#~%#    Copyright (c) 2023  ___     ___~%#                       \\\\  \\\\  /  /~%#                        \\\\  \\\\/  /~%#                         /  /\\\\  \\\\~%#                        /__/  \\\\__\\\\  Fixposition AG~%#~%####################################################################################################~%#~%# Fixposition FP_A-ODOMSTATUS Message~%#~%#~%####################################################################################################~%~%Header header~%int16 init_status                            # Fusion init status (see below)~%int16 fusion_imu                             # Fusion measurement status: IMU (see below)~%int16 fusion_gnss1                           # Fusion measurement status: GNSS 1 (see below)~%int16 fusion_gnss2                           # Fusion measurement status: GNSS 2 (see below)~%int16 fusion_corr                            # Fusion measurement status: GNSS corrections (see below)~%int16 fusion_cam1                            # Fusion measurement status: camera (see below)~%int16 fusion_ws                              # Fusion measurement status: wheelspeed (see below)~%int16 fusion_markers                         # Fusion measurement status: markers (see below)~%int16 imu_status                             # IMU bias status (see below)~%int16 imu_noise                              # IMU variance status (see below)~%int16 imu_conv                               # IMU convergence status (see below)~%int16 gnss1_status                           # GNSS 1 status (see below)~%int16 gnss2_status                           # GNSS 2 status (see below)~%int16 baseline_status                        # Baseline status (see below)~%int16 corr_status                            # GNSS correction status (see below)~%int16 cam1_status                            # Camera 1 status (see below)~%int16 ws_status                              # Wheelspeed status (see below)~%int16 ws_conv                                # Wheelspeed convergence status (see below)~%int16 markers_status                         # Markers status (see below)~%int16 markers_conv                           # Markers convergence status (see below)~%~%~%# Fusion initialisation status (init_status)~%#~%# | Value | Description          |~%# |-------|----------------------|~%# |  null | Unknown              |~%# |   0   | Not initialized      |~%# |   1   | Locally initialised  |~%# |   2   | Globally initialised |~%~%~%# Fusion measurement status (fusion_imu, fusion_cam1, fusion_cam2, fusion_gnss1, fusion_gnss2, fusion_corr, fusion_ws, fusion_markers)~%#~%# | Value | Description        |~%# |-------|--------------------|~%# |  null | Info not available |~%# |   0   | Not used           |~%# |   1   | Used               |~%# |   2   | Degraded           |~%~%~%# IMU bias status (imu_status)~%#~%# | Value | Description        |~%# |-------|--------------------|~%# |  null | Info not available |~%# |   0   | Not converged      |~%# |   1   | Warmstarted        |~%# |   2   | Rough convergence  |~%# |   3   | Fine convergence   |~%~%~%# IMU variance (imu_noise)~%#~%# | Value | Description        |~%# |-------|--------------------|~%# |  null | Info not available |~%# |   0   | Reserved           |~%# |   1   | Low noise          |~%# |   2   | Medium noise       |~%# |   3   | High noise         |~%# | 4...7 | Reserved           |~%~%~%# IMU accelerometer and gyroscope convergence (imu_conv)~%#~%# | Value | Description                      |~%# |-------|----------------------------------|~%# |  null | Info not available               |~%# |   0   | Awaiting Fusion                  |~%# |   1   | Awaiting IMU measurements        |~%# |   2   | Insufficient global measurements |~%# |   3   | Insufficient motion              |~%# |   4   | Converging                       |~%# | 5...6 | Reserved                         |~%# |   7   | Idle                             |~%~%~%# GNSS fix status (gnss1_status, gnss2_status)~%#~%# | Value | Description                    |~%# |-------|--------------------------------|~%# |  null | Info not available             |~%# |   0   | No fix                         |~%# |   1   | Single-point positioning (SPP) |~%# |   2   | RTK moving baseline            |~%# | 3...4 | Reserved                       |~%# |   5   | RTK float                      |~%# | 6...7 | Reserved                       |~%# |   8   | RTK fixed                      |~%~%~%# GNSS correction status (corr_status)~%#~%# | Value | Description                                                                                                    |~%# |-------|----------------------------------------------------------------------------------------------------------------|~%# |  null | Info not available                                                                                             |~%# |   0   | Waiting fusion                                                                                                 |~%# |   1   | No GNSS available                                                                                              |~%# |   2   | No corrections used                                                                                            |~%# |   3   | Limited corrections used: station data & at least one of the constellations among the valid rover measurements |~%# |   4   | Corrections are too old                                                                                        |~%# |   5   | Sufficient corrections used: station data and corrections for ALL bands among the valid rover measurements     |~%~%~%# Baseline status (baseline_status)~%#~%# | Value | Description            |~%# |-------|------------------------|~%# |  null | Info not available     |~%# |   0   | Waiting fusion         |~%# |   1   | Not available / No fix |~%# |   2   | Failing                |~%# |   3   | Passing                |~%~%~%# Camera status (cam1_status)~%#~%# | Value | Description                                      |~%# |-------|--------------------------------------------------|~%# |  null | Info not available                               |~%# |   0   | Camera not available                             |~%# |   1   | Camera available, but not usable (e.g. too dark) |~%# | 2...4 | Reserved                                         |~%# |   5   | Camera working and available                     |~%~%~%# Wheelspeed status (ws_status)~%#~%# | Value | Description                                                |~%# |-------|------------------------------------------------------------|~%# |  null | Info not available                                         |~%# |   0   | No wheelspeed enabled                                      |~%# |   1   | Missing wheelspeed measurements                            |~%# |   2   | At least one wheelspeed enabled, no wheelspeed converged   |~%# |   3   | At least one wheelspeed enabled and at least one converged |~%# |   4   | At least one wheelspeed enabled and all converged          |~%~%~%# Wheelspeed convergence status (ws_conv)~%#~%# | Value | Description                       |~%# |-------|-----------------------------------|~%# |  null | Info not available                |~%# |   0   | Awaiting Fusion                   |~%# |   1   | Missing wheelspeed measurements   |~%# |   2   | Insufficient global measurements  |~%# |   3   | Insufficient motion               |~%# |   4   | Insufficient imu bias convergence |~%# |   5   | Converging                        |~%# |   6   | Idle                              |~%~%~%# Markers status (markers_status)~%#~%# | Value | Description                 |~%# |-------|-----------------------------|~%# |  null | Info not available          |~%# |   0   | No markers available        |~%# |   1   | Markers available           |~%# |   2   | Markers available, and used |~%~%~%# Markers convergence status (markers_conv)~%#~%# | Value | Description                      |~%# |-------|----------------------------------|~%# |  null | Info not available               |~%# |   0   | Awaiting Fusion                  |~%# |   1   | Waiting marker measurements      |~%# |   2   | Insufficient global measurements |~%# |   3   | Converging                       |~%# |   4   | Idle                             |~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'odomstatus)))
  "Returns full string definition for message of type 'odomstatus"
  (cl:format cl:nil "####################################################################################################~%#~%#    Copyright (c) 2023  ___     ___~%#                       \\\\  \\\\  /  /~%#                        \\\\  \\\\/  /~%#                         /  /\\\\  \\\\~%#                        /__/  \\\\__\\\\  Fixposition AG~%#~%####################################################################################################~%#~%# Fixposition FP_A-ODOMSTATUS Message~%#~%#~%####################################################################################################~%~%Header header~%int16 init_status                            # Fusion init status (see below)~%int16 fusion_imu                             # Fusion measurement status: IMU (see below)~%int16 fusion_gnss1                           # Fusion measurement status: GNSS 1 (see below)~%int16 fusion_gnss2                           # Fusion measurement status: GNSS 2 (see below)~%int16 fusion_corr                            # Fusion measurement status: GNSS corrections (see below)~%int16 fusion_cam1                            # Fusion measurement status: camera (see below)~%int16 fusion_ws                              # Fusion measurement status: wheelspeed (see below)~%int16 fusion_markers                         # Fusion measurement status: markers (see below)~%int16 imu_status                             # IMU bias status (see below)~%int16 imu_noise                              # IMU variance status (see below)~%int16 imu_conv                               # IMU convergence status (see below)~%int16 gnss1_status                           # GNSS 1 status (see below)~%int16 gnss2_status                           # GNSS 2 status (see below)~%int16 baseline_status                        # Baseline status (see below)~%int16 corr_status                            # GNSS correction status (see below)~%int16 cam1_status                            # Camera 1 status (see below)~%int16 ws_status                              # Wheelspeed status (see below)~%int16 ws_conv                                # Wheelspeed convergence status (see below)~%int16 markers_status                         # Markers status (see below)~%int16 markers_conv                           # Markers convergence status (see below)~%~%~%# Fusion initialisation status (init_status)~%#~%# | Value | Description          |~%# |-------|----------------------|~%# |  null | Unknown              |~%# |   0   | Not initialized      |~%# |   1   | Locally initialised  |~%# |   2   | Globally initialised |~%~%~%# Fusion measurement status (fusion_imu, fusion_cam1, fusion_cam2, fusion_gnss1, fusion_gnss2, fusion_corr, fusion_ws, fusion_markers)~%#~%# | Value | Description        |~%# |-------|--------------------|~%# |  null | Info not available |~%# |   0   | Not used           |~%# |   1   | Used               |~%# |   2   | Degraded           |~%~%~%# IMU bias status (imu_status)~%#~%# | Value | Description        |~%# |-------|--------------------|~%# |  null | Info not available |~%# |   0   | Not converged      |~%# |   1   | Warmstarted        |~%# |   2   | Rough convergence  |~%# |   3   | Fine convergence   |~%~%~%# IMU variance (imu_noise)~%#~%# | Value | Description        |~%# |-------|--------------------|~%# |  null | Info not available |~%# |   0   | Reserved           |~%# |   1   | Low noise          |~%# |   2   | Medium noise       |~%# |   3   | High noise         |~%# | 4...7 | Reserved           |~%~%~%# IMU accelerometer and gyroscope convergence (imu_conv)~%#~%# | Value | Description                      |~%# |-------|----------------------------------|~%# |  null | Info not available               |~%# |   0   | Awaiting Fusion                  |~%# |   1   | Awaiting IMU measurements        |~%# |   2   | Insufficient global measurements |~%# |   3   | Insufficient motion              |~%# |   4   | Converging                       |~%# | 5...6 | Reserved                         |~%# |   7   | Idle                             |~%~%~%# GNSS fix status (gnss1_status, gnss2_status)~%#~%# | Value | Description                    |~%# |-------|--------------------------------|~%# |  null | Info not available             |~%# |   0   | No fix                         |~%# |   1   | Single-point positioning (SPP) |~%# |   2   | RTK moving baseline            |~%# | 3...4 | Reserved                       |~%# |   5   | RTK float                      |~%# | 6...7 | Reserved                       |~%# |   8   | RTK fixed                      |~%~%~%# GNSS correction status (corr_status)~%#~%# | Value | Description                                                                                                    |~%# |-------|----------------------------------------------------------------------------------------------------------------|~%# |  null | Info not available                                                                                             |~%# |   0   | Waiting fusion                                                                                                 |~%# |   1   | No GNSS available                                                                                              |~%# |   2   | No corrections used                                                                                            |~%# |   3   | Limited corrections used: station data & at least one of the constellations among the valid rover measurements |~%# |   4   | Corrections are too old                                                                                        |~%# |   5   | Sufficient corrections used: station data and corrections for ALL bands among the valid rover measurements     |~%~%~%# Baseline status (baseline_status)~%#~%# | Value | Description            |~%# |-------|------------------------|~%# |  null | Info not available     |~%# |   0   | Waiting fusion         |~%# |   1   | Not available / No fix |~%# |   2   | Failing                |~%# |   3   | Passing                |~%~%~%# Camera status (cam1_status)~%#~%# | Value | Description                                      |~%# |-------|--------------------------------------------------|~%# |  null | Info not available                               |~%# |   0   | Camera not available                             |~%# |   1   | Camera available, but not usable (e.g. too dark) |~%# | 2...4 | Reserved                                         |~%# |   5   | Camera working and available                     |~%~%~%# Wheelspeed status (ws_status)~%#~%# | Value | Description                                                |~%# |-------|------------------------------------------------------------|~%# |  null | Info not available                                         |~%# |   0   | No wheelspeed enabled                                      |~%# |   1   | Missing wheelspeed measurements                            |~%# |   2   | At least one wheelspeed enabled, no wheelspeed converged   |~%# |   3   | At least one wheelspeed enabled and at least one converged |~%# |   4   | At least one wheelspeed enabled and all converged          |~%~%~%# Wheelspeed convergence status (ws_conv)~%#~%# | Value | Description                       |~%# |-------|-----------------------------------|~%# |  null | Info not available                |~%# |   0   | Awaiting Fusion                   |~%# |   1   | Missing wheelspeed measurements   |~%# |   2   | Insufficient global measurements  |~%# |   3   | Insufficient motion               |~%# |   4   | Insufficient imu bias convergence |~%# |   5   | Converging                        |~%# |   6   | Idle                              |~%~%~%# Markers status (markers_status)~%#~%# | Value | Description                 |~%# |-------|-----------------------------|~%# |  null | Info not available          |~%# |   0   | No markers available        |~%# |   1   | Markers available           |~%# |   2   | Markers available, and used |~%~%~%# Markers convergence status (markers_conv)~%#~%# | Value | Description                      |~%# |-------|----------------------------------|~%# |  null | Info not available               |~%# |   0   | Awaiting Fusion                  |~%# |   1   | Waiting marker measurements      |~%# |   2   | Insufficient global measurements |~%# |   3   | Converging                       |~%# |   4   | Idle                             |~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <odomstatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <odomstatus>))
  "Converts a ROS message object to a list"
  (cl:list 'odomstatus
    (cl:cons ':header (header msg))
    (cl:cons ':init_status (init_status msg))
    (cl:cons ':fusion_imu (fusion_imu msg))
    (cl:cons ':fusion_gnss1 (fusion_gnss1 msg))
    (cl:cons ':fusion_gnss2 (fusion_gnss2 msg))
    (cl:cons ':fusion_corr (fusion_corr msg))
    (cl:cons ':fusion_cam1 (fusion_cam1 msg))
    (cl:cons ':fusion_ws (fusion_ws msg))
    (cl:cons ':fusion_markers (fusion_markers msg))
    (cl:cons ':imu_status (imu_status msg))
    (cl:cons ':imu_noise (imu_noise msg))
    (cl:cons ':imu_conv (imu_conv msg))
    (cl:cons ':gnss1_status (gnss1_status msg))
    (cl:cons ':gnss2_status (gnss2_status msg))
    (cl:cons ':baseline_status (baseline_status msg))
    (cl:cons ':corr_status (corr_status msg))
    (cl:cons ':cam1_status (cam1_status msg))
    (cl:cons ':ws_status (ws_status msg))
    (cl:cons ':ws_conv (ws_conv msg))
    (cl:cons ':markers_status (markers_status msg))
    (cl:cons ':markers_conv (markers_conv msg))
))
