;; Auto-generated. Do not edit!


(when (boundp 'fixposition_driver_ros1::gprmc)
  (if (not (find-package "FIXPOSITION_DRIVER_ROS1"))
    (make-package "FIXPOSITION_DRIVER_ROS1"))
  (shadow 'gprmc (find-package "FIXPOSITION_DRIVER_ROS1")))
(unless (find-package "FIXPOSITION_DRIVER_ROS1::GPRMC")
  (make-package "FIXPOSITION_DRIVER_ROS1::GPRMC"))

(in-package "ROS")
;;//! \htmlinclude gprmc.msg.html


(defclass fixposition_driver_ros1::gprmc
  :super ros::object
  :slots (_time _status _latitude _lat_ns _longitude _lon_ew _speed _course _date _mode ))

(defmethod fixposition_driver_ros1::gprmc
  (:init
   (&key
    ((:time __time) "")
    ((:status __status) 0)
    ((:latitude __latitude) 0.0)
    ((:lat_ns __lat_ns) 0)
    ((:longitude __longitude) 0.0)
    ((:lon_ew __lon_ew) 0)
    ((:speed __speed) 0.0)
    ((:course __course) 0.0)
    ((:date __date) "")
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _time (string __time))
   (setq _status (round __status))
   (setq _latitude (float __latitude))
   (setq _lat_ns (round __lat_ns))
   (setq _longitude (float __longitude))
   (setq _lon_ew (round __lon_ew))
   (setq _speed (float __speed))
   (setq _course (float __course))
   (setq _date (string __date))
   (setq _mode (round __mode))
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
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
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:course
   (&optional __course)
   (if __course (setq _course __course)) _course)
  (:date
   (&optional __date)
   (if __date (setq _date __date)) _date)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; string _time
    4 (length _time)
    ;; char _status
    1
    ;; float64 _latitude
    8
    ;; char _lat_ns
    1
    ;; float64 _longitude
    8
    ;; char _lon_ew
    1
    ;; float64 _speed
    8
    ;; float64 _course
    8
    ;; string _date
    4 (length _date)
    ;; char _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _time
       (write-long (length _time) s) (princ _time s)
     ;; char _status
       (write-byte _status s)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; char _lat_ns
       (write-byte _lat_ns s)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; char _lon_ew
       (write-byte _lon_ew s)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _course
       (sys::poke _course (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _date
       (write-long (length _date) s) (princ _date s)
     ;; char _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; char _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; char _lat_ns
     (setq _lat_ns (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; char _lon_ew
     (setq _lon_ew (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _course
     (setq _course (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _date
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _date (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; char _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get fixposition_driver_ros1::gprmc :md5sum-) "50641526ce3dc086b7d7754b7f9196df")
(setf (get fixposition_driver_ros1::gprmc :datatype-) "fixposition_driver_ros1/gprmc")
(setf (get fixposition_driver_ros1::gprmc :definition-)
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
# Fixposition NMEA-GP-RMC Message
#
#
####################################################################################################

# Format | Field     | Unit              | Description
# -------|-----------|-------------------|--------------------------------------------------------|
string     time      # [hhmmss.ss(ss)]   | UTC time (hours, minutes and seconds).
char       status    # [-]               | Data validity status, A (data valid) or V (not valid).
float64    latitude  # [ddmm.mmmmm(mm)]  | Latitude.
char       lat_ns    # [-]               | Latitude north (N) or south (S) indicator.
float64    longitude # [dddmm.mmmmm(mm)] | Longitude.
char       lon_ew    # [-]               | Longitude east (E) or west (W) indicator.
float64    speed     # [knots]           | Speed over ground.
float64    course    # [deg]             | Course over ground (w.r.t. True North).
string     date      # [ddmmyy]          | UTC date (day, month and year).
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



(provide :fixposition_driver_ros1/gprmc "50641526ce3dc086b7d7754b7f9196df")


