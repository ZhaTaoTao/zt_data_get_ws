;; Auto-generated. Do not edit!


(when (boundp 'fixposition_driver_ros1::gpgll)
  (if (not (find-package "FIXPOSITION_DRIVER_ROS1"))
    (make-package "FIXPOSITION_DRIVER_ROS1"))
  (shadow 'gpgll (find-package "FIXPOSITION_DRIVER_ROS1")))
(unless (find-package "FIXPOSITION_DRIVER_ROS1::GPGLL")
  (make-package "FIXPOSITION_DRIVER_ROS1::GPGLL"))

(in-package "ROS")
;;//! \htmlinclude gpgll.msg.html


(defclass fixposition_driver_ros1::gpgll
  :super ros::object
  :slots (_latitude _lat_ns _longitude _lon_ew _time _status _mode ))

(defmethod fixposition_driver_ros1::gpgll
  (:init
   (&key
    ((:latitude __latitude) 0.0)
    ((:lat_ns __lat_ns) 0)
    ((:longitude __longitude) 0.0)
    ((:lon_ew __lon_ew) 0)
    ((:time __time) "")
    ((:status __status) 0)
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _latitude (float __latitude))
   (setq _lat_ns (round __lat_ns))
   (setq _longitude (float __longitude))
   (setq _lon_ew (round __lon_ew))
   (setq _time (string __time))
   (setq _status (round __status))
   (setq _mode (round __mode))
   self)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:lat_ns
   (&optional __lat_ns)
   (if __lat_ns (setq _lat_ns __lat_ns)) _lat_ns)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:lon_ew
   (&optional __lon_ew)
   (if __lon_ew (setq _lon_ew __lon_ew)) _lon_ew)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; float64 _latitude
    8
    ;; char _lat_ns
    1
    ;; float64 _longitude
    8
    ;; char _lon_ew
    1
    ;; string _time
    4 (length _time)
    ;; char _status
    1
    ;; char _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; char _lat_ns
       (write-byte _lat_ns s)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; char _lon_ew
       (write-byte _lon_ew s)
     ;; string _time
       (write-long (length _time) s) (princ _time s)
     ;; char _status
       (write-byte _status s)
     ;; char _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; char _lat_ns
     (setq _lat_ns (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; char _lon_ew
     (setq _lon_ew (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; char _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; char _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get fixposition_driver_ros1::gpgll :md5sum-) "e3576975fe64f5ded3db23e0cd342a87")
(setf (get fixposition_driver_ros1::gpgll :datatype-) "fixposition_driver_ros1/gpgll")
(setf (get fixposition_driver_ros1::gpgll :definition-)
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
# Fixposition NMEA-GP-GLL Message
#
#
####################################################################################################

# Format | Field     | Unit              | Description
# -------|-----------|-------------------|--------------------------------------------------------|
float64    latitude  # [ddmm.mmmmm(mm)]  | Latitude.
char       lat_ns    # [-]               | Latitude north (N) or south (S) indicator.
float64    longitude # [dddmm.mmmmm(mm)] | Longitude.
char       lon_ew    # [-]               | Longitude east (E) or west (W) indicator.
string     time      # [hhmmss.ss(ss)]   | UTC time (hours, minutes and seconds).
char       status    # [-]               | Data validity status, A (data valid) or V (not valid).
char       mode      # [-]               | Positioning system mode indicator (see below).

# Mode table
#
# | ID | Signal                |
# |----|-----------------------|
# |  N | Data not valid        |
# |  E | Dead-reckoning        |
# |  D | Differential          |
# |  A | Autonomous            |
# |  M | Manual input not used |
# |  S | Simulator not used    |

")



(provide :fixposition_driver_ros1/gpgll "e3576975fe64f5ded3db23e0cd342a87")


