;; Auto-generated. Do not edit!


(when (boundp 'fixposition_driver_ros1::gpzda)
  (if (not (find-package "FIXPOSITION_DRIVER_ROS1"))
    (make-package "FIXPOSITION_DRIVER_ROS1"))
  (shadow 'gpzda (find-package "FIXPOSITION_DRIVER_ROS1")))
(unless (find-package "FIXPOSITION_DRIVER_ROS1::GPZDA")
  (make-package "FIXPOSITION_DRIVER_ROS1::GPZDA"))

(in-package "ROS")
;;//! \htmlinclude gpzda.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass fixposition_driver_ros1::gpzda
  :super ros::object
  :slots (_header _time _date _local_hr _local_min ))

(defmethod fixposition_driver_ros1::gpzda
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time __time) "")
    ((:date __date) "")
    ((:local_hr __local_hr) 0)
    ((:local_min __local_min) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _time (string __time))
   (setq _date (string __date))
   (setq _local_hr (round __local_hr))
   (setq _local_min (round __local_min))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:date
   (&optional __date)
   (if __date (setq _date __date)) _date)
  (:local_hr
   (&optional __local_hr)
   (if __local_hr (setq _local_hr __local_hr)) _local_hr)
  (:local_min
   (&optional __local_min)
   (if __local_min (setq _local_min __local_min)) _local_min)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _time
    4 (length _time)
    ;; string _date
    4 (length _date)
    ;; int16 _local_hr
    2
    ;; int16 _local_min
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _time
       (write-long (length _time) s) (princ _time s)
     ;; string _date
       (write-long (length _date) s) (princ _date s)
     ;; int16 _local_hr
       (write-word _local_hr s)
     ;; int16 _local_min
       (write-word _local_min s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _date
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _date (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _local_hr
     (setq _local_hr (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _local_min
     (setq _local_min (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get fixposition_driver_ros1::gpzda :md5sum-) "5aa4c52da2e45e51197dea2175085966")
(setf (get fixposition_driver_ros1::gpzda :datatype-) "fixposition_driver_ros1/gpzda")
(setf (get fixposition_driver_ros1::gpzda :definition-)
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
# Fixposition NMEA-GP-ZDA Message
#
#
####################################################################################################

# Format | Field     | Unit            | Description
# -------|-----------|-----------------|-------------------------------------------------------|
Header     header    # [ns]            | Specifies the ROS time and Euclidian reference frame.
string     time      # [hhmmss.ss(ss)] | UTC0 time (hours, minutes and seconds).
string     date      # [dd/mm/yyyy]    | Date (UTC0).
int16      local_hr  # [00+-13]        | Local zone hours, always 00 (= UTC).
int16      local_min # [00-59]         | Local zone minutes, always 00 (= UTC).

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



(provide :fixposition_driver_ros1/gpzda "5aa4c52da2e45e51197dea2175085966")


