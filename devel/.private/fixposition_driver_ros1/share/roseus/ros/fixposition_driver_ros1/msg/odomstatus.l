;; Auto-generated. Do not edit!


(when (boundp 'fixposition_driver_ros1::odomstatus)
  (if (not (find-package "FIXPOSITION_DRIVER_ROS1"))
    (make-package "FIXPOSITION_DRIVER_ROS1"))
  (shadow 'odomstatus (find-package "FIXPOSITION_DRIVER_ROS1")))
(unless (find-package "FIXPOSITION_DRIVER_ROS1::ODOMSTATUS")
  (make-package "FIXPOSITION_DRIVER_ROS1::ODOMSTATUS"))

(in-package "ROS")
;;//! \htmlinclude odomstatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass fixposition_driver_ros1::odomstatus
  :super ros::object
  :slots (_header _init_status _fusion_imu _fusion_gnss1 _fusion_gnss2 _fusion_corr _fusion_cam1 _fusion_ws _fusion_markers _imu_status _imu_noise _imu_conv _gnss1_status _gnss2_status _baseline_status _corr_status _cam1_status _ws_status _ws_conv _markers_status _markers_conv ))

(defmethod fixposition_driver_ros1::odomstatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:init_status __init_status) 0)
    ((:fusion_imu __fusion_imu) 0)
    ((:fusion_gnss1 __fusion_gnss1) 0)
    ((:fusion_gnss2 __fusion_gnss2) 0)
    ((:fusion_corr __fusion_corr) 0)
    ((:fusion_cam1 __fusion_cam1) 0)
    ((:fusion_ws __fusion_ws) 0)
    ((:fusion_markers __fusion_markers) 0)
    ((:imu_status __imu_status) 0)
    ((:imu_noise __imu_noise) 0)
    ((:imu_conv __imu_conv) 0)
    ((:gnss1_status __gnss1_status) 0)
    ((:gnss2_status __gnss2_status) 0)
    ((:baseline_status __baseline_status) 0)
    ((:corr_status __corr_status) 0)
    ((:cam1_status __cam1_status) 0)
    ((:ws_status __ws_status) 0)
    ((:ws_conv __ws_conv) 0)
    ((:markers_status __markers_status) 0)
    ((:markers_conv __markers_conv) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _init_status (round __init_status))
   (setq _fusion_imu (round __fusion_imu))
   (setq _fusion_gnss1 (round __fusion_gnss1))
   (setq _fusion_gnss2 (round __fusion_gnss2))
   (setq _fusion_corr (round __fusion_corr))
   (setq _fusion_cam1 (round __fusion_cam1))
   (setq _fusion_ws (round __fusion_ws))
   (setq _fusion_markers (round __fusion_markers))
   (setq _imu_status (round __imu_status))
   (setq _imu_noise (round __imu_noise))
   (setq _imu_conv (round __imu_conv))
   (setq _gnss1_status (round __gnss1_status))
   (setq _gnss2_status (round __gnss2_status))
   (setq _baseline_status (round __baseline_status))
   (setq _corr_status (round __corr_status))
   (setq _cam1_status (round __cam1_status))
   (setq _ws_status (round __ws_status))
   (setq _ws_conv (round __ws_conv))
   (setq _markers_status (round __markers_status))
   (setq _markers_conv (round __markers_conv))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:init_status
   (&optional __init_status)
   (if __init_status (setq _init_status __init_status)) _init_status)
  (:fusion_imu
   (&optional __fusion_imu)
   (if __fusion_imu (setq _fusion_imu __fusion_imu)) _fusion_imu)
  (:fusion_gnss1
   (&optional __fusion_gnss1)
   (if __fusion_gnss1 (setq _fusion_gnss1 __fusion_gnss1)) _fusion_gnss1)
  (:fusion_gnss2
   (&optional __fusion_gnss2)
   (if __fusion_gnss2 (setq _fusion_gnss2 __fusion_gnss2)) _fusion_gnss2)
  (:fusion_corr
   (&optional __fusion_corr)
   (if __fusion_corr (setq _fusion_corr __fusion_corr)) _fusion_corr)
  (:fusion_cam1
   (&optional __fusion_cam1)
   (if __fusion_cam1 (setq _fusion_cam1 __fusion_cam1)) _fusion_cam1)
  (:fusion_ws
   (&optional __fusion_ws)
   (if __fusion_ws (setq _fusion_ws __fusion_ws)) _fusion_ws)
  (:fusion_markers
   (&optional __fusion_markers)
   (if __fusion_markers (setq _fusion_markers __fusion_markers)) _fusion_markers)
  (:imu_status
   (&optional __imu_status)
   (if __imu_status (setq _imu_status __imu_status)) _imu_status)
  (:imu_noise
   (&optional __imu_noise)
   (if __imu_noise (setq _imu_noise __imu_noise)) _imu_noise)
  (:imu_conv
   (&optional __imu_conv)
   (if __imu_conv (setq _imu_conv __imu_conv)) _imu_conv)
  (:gnss1_status
   (&optional __gnss1_status)
   (if __gnss1_status (setq _gnss1_status __gnss1_status)) _gnss1_status)
  (:gnss2_status
   (&optional __gnss2_status)
   (if __gnss2_status (setq _gnss2_status __gnss2_status)) _gnss2_status)
  (:baseline_status
   (&optional __baseline_status)
   (if __baseline_status (setq _baseline_status __baseline_status)) _baseline_status)
  (:corr_status
   (&optional __corr_status)
   (if __corr_status (setq _corr_status __corr_status)) _corr_status)
  (:cam1_status
   (&optional __cam1_status)
   (if __cam1_status (setq _cam1_status __cam1_status)) _cam1_status)
  (:ws_status
   (&optional __ws_status)
   (if __ws_status (setq _ws_status __ws_status)) _ws_status)
  (:ws_conv
   (&optional __ws_conv)
   (if __ws_conv (setq _ws_conv __ws_conv)) _ws_conv)
  (:markers_status
   (&optional __markers_status)
   (if __markers_status (setq _markers_status __markers_status)) _markers_status)
  (:markers_conv
   (&optional __markers_conv)
   (if __markers_conv (setq _markers_conv __markers_conv)) _markers_conv)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int16 _init_status
    2
    ;; int16 _fusion_imu
    2
    ;; int16 _fusion_gnss1
    2
    ;; int16 _fusion_gnss2
    2
    ;; int16 _fusion_corr
    2
    ;; int16 _fusion_cam1
    2
    ;; int16 _fusion_ws
    2
    ;; int16 _fusion_markers
    2
    ;; int16 _imu_status
    2
    ;; int16 _imu_noise
    2
    ;; int16 _imu_conv
    2
    ;; int16 _gnss1_status
    2
    ;; int16 _gnss2_status
    2
    ;; int16 _baseline_status
    2
    ;; int16 _corr_status
    2
    ;; int16 _cam1_status
    2
    ;; int16 _ws_status
    2
    ;; int16 _ws_conv
    2
    ;; int16 _markers_status
    2
    ;; int16 _markers_conv
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int16 _init_status
       (write-word _init_status s)
     ;; int16 _fusion_imu
       (write-word _fusion_imu s)
     ;; int16 _fusion_gnss1
       (write-word _fusion_gnss1 s)
     ;; int16 _fusion_gnss2
       (write-word _fusion_gnss2 s)
     ;; int16 _fusion_corr
       (write-word _fusion_corr s)
     ;; int16 _fusion_cam1
       (write-word _fusion_cam1 s)
     ;; int16 _fusion_ws
       (write-word _fusion_ws s)
     ;; int16 _fusion_markers
       (write-word _fusion_markers s)
     ;; int16 _imu_status
       (write-word _imu_status s)
     ;; int16 _imu_noise
       (write-word _imu_noise s)
     ;; int16 _imu_conv
       (write-word _imu_conv s)
     ;; int16 _gnss1_status
       (write-word _gnss1_status s)
     ;; int16 _gnss2_status
       (write-word _gnss2_status s)
     ;; int16 _baseline_status
       (write-word _baseline_status s)
     ;; int16 _corr_status
       (write-word _corr_status s)
     ;; int16 _cam1_status
       (write-word _cam1_status s)
     ;; int16 _ws_status
       (write-word _ws_status s)
     ;; int16 _ws_conv
       (write-word _ws_conv s)
     ;; int16 _markers_status
       (write-word _markers_status s)
     ;; int16 _markers_conv
       (write-word _markers_conv s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int16 _init_status
     (setq _init_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _fusion_imu
     (setq _fusion_imu (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _fusion_gnss1
     (setq _fusion_gnss1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _fusion_gnss2
     (setq _fusion_gnss2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _fusion_corr
     (setq _fusion_corr (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _fusion_cam1
     (setq _fusion_cam1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _fusion_ws
     (setq _fusion_ws (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _fusion_markers
     (setq _fusion_markers (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _imu_status
     (setq _imu_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _imu_noise
     (setq _imu_noise (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _imu_conv
     (setq _imu_conv (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _gnss1_status
     (setq _gnss1_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _gnss2_status
     (setq _gnss2_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _baseline_status
     (setq _baseline_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _corr_status
     (setq _corr_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _cam1_status
     (setq _cam1_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _ws_status
     (setq _ws_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _ws_conv
     (setq _ws_conv (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _markers_status
     (setq _markers_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _markers_conv
     (setq _markers_conv (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get fixposition_driver_ros1::odomstatus :md5sum-) "307cfe184ec2b75acdc3f76049315683")
(setf (get fixposition_driver_ros1::odomstatus :datatype-) "fixposition_driver_ros1/odomstatus")
(setf (get fixposition_driver_ros1::odomstatus :definition-)
      "####################################################################################################
#
#    Copyright (c) 2023  ___     ___
#                       \\\\  \\\\  /  /
#                        \\\\  \\\\/  /
#                         /  /\\\\  \\\\
#                        /__/  \\\\__\\\\  Fixposition AG
#
####################################################################################################
#
# Fixposition FP_A-ODOMSTATUS Message
#
#
####################################################################################################

Header header
int16 init_status                            # Fusion init status (see below)
int16 fusion_imu                             # Fusion measurement status: IMU (see below)
int16 fusion_gnss1                           # Fusion measurement status: GNSS 1 (see below)
int16 fusion_gnss2                           # Fusion measurement status: GNSS 2 (see below)
int16 fusion_corr                            # Fusion measurement status: GNSS corrections (see below)
int16 fusion_cam1                            # Fusion measurement status: camera (see below)
int16 fusion_ws                              # Fusion measurement status: wheelspeed (see below)
int16 fusion_markers                         # Fusion measurement status: markers (see below)
int16 imu_status                             # IMU bias status (see below)
int16 imu_noise                              # IMU variance status (see below)
int16 imu_conv                               # IMU convergence status (see below)
int16 gnss1_status                           # GNSS 1 status (see below)
int16 gnss2_status                           # GNSS 2 status (see below)
int16 baseline_status                        # Baseline status (see below)
int16 corr_status                            # GNSS correction status (see below)
int16 cam1_status                            # Camera 1 status (see below)
int16 ws_status                              # Wheelspeed status (see below)
int16 ws_conv                                # Wheelspeed convergence status (see below)
int16 markers_status                         # Markers status (see below)
int16 markers_conv                           # Markers convergence status (see below)


# Fusion initialisation status (init_status)
#
# | Value | Description          |
# |-------|----------------------|
# |  null | Unknown              |
# |   0   | Not initialized      |
# |   1   | Locally initialised  |
# |   2   | Globally initialised |


# Fusion measurement status (fusion_imu, fusion_cam1, fusion_cam2, fusion_gnss1, fusion_gnss2, fusion_corr, fusion_ws, fusion_markers)
#
# | Value | Description        |
# |-------|--------------------|
# |  null | Info not available |
# |   0   | Not used           |
# |   1   | Used               |
# |   2   | Degraded           |


# IMU bias status (imu_status)
#
# | Value | Description        |
# |-------|--------------------|
# |  null | Info not available |
# |   0   | Not converged      |
# |   1   | Warmstarted        |
# |   2   | Rough convergence  |
# |   3   | Fine convergence   |


# IMU variance (imu_noise)
#
# | Value | Description        |
# |-------|--------------------|
# |  null | Info not available |
# |   0   | Reserved           |
# |   1   | Low noise          |
# |   2   | Medium noise       |
# |   3   | High noise         |
# | 4...7 | Reserved           |


# IMU accelerometer and gyroscope convergence (imu_conv)
#
# | Value | Description                      |
# |-------|----------------------------------|
# |  null | Info not available               |
# |   0   | Awaiting Fusion                  |
# |   1   | Awaiting IMU measurements        |
# |   2   | Insufficient global measurements |
# |   3   | Insufficient motion              |
# |   4   | Converging                       |
# | 5...6 | Reserved                         |
# |   7   | Idle                             |


# GNSS fix status (gnss1_status, gnss2_status)
#
# | Value | Description                    |
# |-------|--------------------------------|
# |  null | Info not available             |
# |   0   | No fix                         |
# |   1   | Single-point positioning (SPP) |
# |   2   | RTK moving baseline            |
# | 3...4 | Reserved                       |
# |   5   | RTK float                      |
# | 6...7 | Reserved                       |
# |   8   | RTK fixed                      |


# GNSS correction status (corr_status)
#
# | Value | Description                                                                                                    |
# |-------|----------------------------------------------------------------------------------------------------------------|
# |  null | Info not available                                                                                             |
# |   0   | Waiting fusion                                                                                                 |
# |   1   | No GNSS available                                                                                              |
# |   2   | No corrections used                                                                                            |
# |   3   | Limited corrections used: station data & at least one of the constellations among the valid rover measurements |
# |   4   | Corrections are too old                                                                                        |
# |   5   | Sufficient corrections used: station data and corrections for ALL bands among the valid rover measurements     |


# Baseline status (baseline_status)
#
# | Value | Description            |
# |-------|------------------------|
# |  null | Info not available     |
# |   0   | Waiting fusion         |
# |   1   | Not available / No fix |
# |   2   | Failing                |
# |   3   | Passing                |


# Camera status (cam1_status)
#
# | Value | Description                                      |
# |-------|--------------------------------------------------|
# |  null | Info not available                               |
# |   0   | Camera not available                             |
# |   1   | Camera available, but not usable (e.g. too dark) |
# | 2...4 | Reserved                                         |
# |   5   | Camera working and available                     |


# Wheelspeed status (ws_status)
#
# | Value | Description                                                |
# |-------|------------------------------------------------------------|
# |  null | Info not available                                         |
# |   0   | No wheelspeed enabled                                      |
# |   1   | Missing wheelspeed measurements                            |
# |   2   | At least one wheelspeed enabled, no wheelspeed converged   |
# |   3   | At least one wheelspeed enabled and at least one converged |
# |   4   | At least one wheelspeed enabled and all converged          |


# Wheelspeed convergence status (ws_conv)
#
# | Value | Description                       |
# |-------|-----------------------------------|
# |  null | Info not available                |
# |   0   | Awaiting Fusion                   |
# |   1   | Missing wheelspeed measurements   |
# |   2   | Insufficient global measurements  |
# |   3   | Insufficient motion               |
# |   4   | Insufficient imu bias convergence |
# |   5   | Converging                        |
# |   6   | Idle                              |


# Markers status (markers_status)
#
# | Value | Description                 |
# |-------|-----------------------------|
# |  null | Info not available          |
# |   0   | No markers available        |
# |   1   | Markers available           |
# |   2   | Markers available, and used |


# Markers convergence status (markers_conv)
#
# | Value | Description                      |
# |-------|----------------------------------|
# |  null | Info not available               |
# |   0   | Awaiting Fusion                  |
# |   1   | Waiting marker measurements      |
# |   2   | Insufficient global measurements |
# |   3   | Converging                       |
# |   4   | Idle                             |

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :fixposition_driver_ros1/odomstatus "307cfe184ec2b75acdc3f76049315683")


