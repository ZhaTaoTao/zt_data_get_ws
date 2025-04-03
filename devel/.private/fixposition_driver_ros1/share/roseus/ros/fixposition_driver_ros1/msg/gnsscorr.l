;; Auto-generated. Do not edit!


(when (boundp 'fixposition_driver_ros1::gnsscorr)
  (if (not (find-package "FIXPOSITION_DRIVER_ROS1"))
    (make-package "FIXPOSITION_DRIVER_ROS1"))
  (shadow 'gnsscorr (find-package "FIXPOSITION_DRIVER_ROS1")))
(unless (find-package "FIXPOSITION_DRIVER_ROS1::GNSSCORR")
  (make-package "FIXPOSITION_DRIVER_ROS1::GNSSCORR"))

(in-package "ROS")
;;//! \htmlinclude gnsscorr.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass fixposition_driver_ros1::gnsscorr
  :super ros::object
  :slots (_header _gnss1_fix _gnss1_nsig_l1 _gnss1_nsig_l2 _gnss2_fix _gnss2_nsig_l1 _gnss2_nsig_l2 _corr_latency _corr_update_rate _corr_data_rate _corr_msg_rate _sta_id _sta_llh _sta_dist ))

(defmethod fixposition_driver_ros1::gnsscorr
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:gnss1_fix __gnss1_fix) 0)
    ((:gnss1_nsig_l1 __gnss1_nsig_l1) 0)
    ((:gnss1_nsig_l2 __gnss1_nsig_l2) 0)
    ((:gnss2_fix __gnss2_fix) 0)
    ((:gnss2_nsig_l1 __gnss2_nsig_l1) 0)
    ((:gnss2_nsig_l2 __gnss2_nsig_l2) 0)
    ((:corr_latency __corr_latency) 0.0)
    ((:corr_update_rate __corr_update_rate) 0.0)
    ((:corr_data_rate __corr_data_rate) 0.0)
    ((:corr_msg_rate __corr_msg_rate) 0.0)
    ((:sta_id __sta_id) 0)
    ((:sta_llh __sta_llh) (instance geometry_msgs::Vector3 :init))
    ((:sta_dist __sta_dist) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _gnss1_fix (round __gnss1_fix))
   (setq _gnss1_nsig_l1 (round __gnss1_nsig_l1))
   (setq _gnss1_nsig_l2 (round __gnss1_nsig_l2))
   (setq _gnss2_fix (round __gnss2_fix))
   (setq _gnss2_nsig_l1 (round __gnss2_nsig_l1))
   (setq _gnss2_nsig_l2 (round __gnss2_nsig_l2))
   (setq _corr_latency (float __corr_latency))
   (setq _corr_update_rate (float __corr_update_rate))
   (setq _corr_data_rate (float __corr_data_rate))
   (setq _corr_msg_rate (float __corr_msg_rate))
   (setq _sta_id (round __sta_id))
   (setq _sta_llh __sta_llh)
   (setq _sta_dist (round __sta_dist))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:gnss1_fix
   (&optional __gnss1_fix)
   (if __gnss1_fix (setq _gnss1_fix __gnss1_fix)) _gnss1_fix)
  (:gnss1_nsig_l1
   (&optional __gnss1_nsig_l1)
   (if __gnss1_nsig_l1 (setq _gnss1_nsig_l1 __gnss1_nsig_l1)) _gnss1_nsig_l1)
  (:gnss1_nsig_l2
   (&optional __gnss1_nsig_l2)
   (if __gnss1_nsig_l2 (setq _gnss1_nsig_l2 __gnss1_nsig_l2)) _gnss1_nsig_l2)
  (:gnss2_fix
   (&optional __gnss2_fix)
   (if __gnss2_fix (setq _gnss2_fix __gnss2_fix)) _gnss2_fix)
  (:gnss2_nsig_l1
   (&optional __gnss2_nsig_l1)
   (if __gnss2_nsig_l1 (setq _gnss2_nsig_l1 __gnss2_nsig_l1)) _gnss2_nsig_l1)
  (:gnss2_nsig_l2
   (&optional __gnss2_nsig_l2)
   (if __gnss2_nsig_l2 (setq _gnss2_nsig_l2 __gnss2_nsig_l2)) _gnss2_nsig_l2)
  (:corr_latency
   (&optional __corr_latency)
   (if __corr_latency (setq _corr_latency __corr_latency)) _corr_latency)
  (:corr_update_rate
   (&optional __corr_update_rate)
   (if __corr_update_rate (setq _corr_update_rate __corr_update_rate)) _corr_update_rate)
  (:corr_data_rate
   (&optional __corr_data_rate)
   (if __corr_data_rate (setq _corr_data_rate __corr_data_rate)) _corr_data_rate)
  (:corr_msg_rate
   (&optional __corr_msg_rate)
   (if __corr_msg_rate (setq _corr_msg_rate __corr_msg_rate)) _corr_msg_rate)
  (:sta_id
   (&optional __sta_id)
   (if __sta_id (setq _sta_id __sta_id)) _sta_id)
  (:sta_llh
   (&rest __sta_llh)
   (if (keywordp (car __sta_llh))
       (send* _sta_llh __sta_llh)
     (progn
       (if __sta_llh (setq _sta_llh (car __sta_llh)))
       _sta_llh)))
  (:sta_dist
   (&optional __sta_dist)
   (if __sta_dist (setq _sta_dist __sta_dist)) _sta_dist)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int16 _gnss1_fix
    2
    ;; int16 _gnss1_nsig_l1
    2
    ;; int16 _gnss1_nsig_l2
    2
    ;; int16 _gnss2_fix
    2
    ;; int16 _gnss2_nsig_l1
    2
    ;; int16 _gnss2_nsig_l2
    2
    ;; float64 _corr_latency
    8
    ;; float64 _corr_update_rate
    8
    ;; float64 _corr_data_rate
    8
    ;; float64 _corr_msg_rate
    8
    ;; int16 _sta_id
    2
    ;; geometry_msgs/Vector3 _sta_llh
    (send _sta_llh :serialization-length)
    ;; int32 _sta_dist
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int16 _gnss1_fix
       (write-word _gnss1_fix s)
     ;; int16 _gnss1_nsig_l1
       (write-word _gnss1_nsig_l1 s)
     ;; int16 _gnss1_nsig_l2
       (write-word _gnss1_nsig_l2 s)
     ;; int16 _gnss2_fix
       (write-word _gnss2_fix s)
     ;; int16 _gnss2_nsig_l1
       (write-word _gnss2_nsig_l1 s)
     ;; int16 _gnss2_nsig_l2
       (write-word _gnss2_nsig_l2 s)
     ;; float64 _corr_latency
       (sys::poke _corr_latency (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _corr_update_rate
       (sys::poke _corr_update_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _corr_data_rate
       (sys::poke _corr_data_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _corr_msg_rate
       (sys::poke _corr_msg_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int16 _sta_id
       (write-word _sta_id s)
     ;; geometry_msgs/Vector3 _sta_llh
       (send _sta_llh :serialize s)
     ;; int32 _sta_dist
       (write-long _sta_dist s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int16 _gnss1_fix
     (setq _gnss1_fix (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _gnss1_nsig_l1
     (setq _gnss1_nsig_l1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _gnss1_nsig_l2
     (setq _gnss1_nsig_l2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _gnss2_fix
     (setq _gnss2_fix (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _gnss2_nsig_l1
     (setq _gnss2_nsig_l1 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _gnss2_nsig_l2
     (setq _gnss2_nsig_l2 (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _corr_latency
     (setq _corr_latency (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _corr_update_rate
     (setq _corr_update_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _corr_data_rate
     (setq _corr_data_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _corr_msg_rate
     (setq _corr_msg_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int16 _sta_id
     (setq _sta_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; geometry_msgs/Vector3 _sta_llh
     (send _sta_llh :deserialize buf ptr-) (incf ptr- (send _sta_llh :serialization-length))
   ;; int32 _sta_dist
     (setq _sta_dist (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get fixposition_driver_ros1::gnsscorr :md5sum-) "b77ad2e5b59b9f0261c4a7de8a44a073")
(setf (get fixposition_driver_ros1::gnsscorr :datatype-) "fixposition_driver_ros1/gnsscorr")
(setf (get fixposition_driver_ros1::gnsscorr :definition-)
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
# Fixposition FP_A-GNSSCORR Message
#
#
####################################################################################################

Header header
int16 gnss1_fix          # GNSS1 fix status
int16 gnss1_nsig_l1      # Number of L1 signals with correction data tracked by GNSS1
int16 gnss1_nsig_l2      # Number of L2 signals with correction data tracked by GNSS1
int16 gnss2_fix          # GNSS2 fix status
int16 gnss2_nsig_l1      # Number of L1 signals with correction data tracked by GNSS2
int16 gnss2_nsig_l2      # Number of L2 signals with correction data tracked by GNSS2

float64 corr_latency       # Average correction data latency (10s window)
float64 corr_update_rate   # Average correction update rate (10s window)
float64 corr_data_rate     # Average correction data rate (10s window)
float64 corr_msg_rate      # Average correction message rate (10s window)

int16 sta_id                    # Correction station ID, range 0–4095
geometry_msgs/Vector3 sta_llh   # Correction station LLH position (latitude, longitude, height)
int32 sta_dist                  # Correction station baseline length

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

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :fixposition_driver_ros1/gnsscorr "b77ad2e5b59b9f0261c4a7de8a44a073")


