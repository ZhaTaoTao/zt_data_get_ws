;; Auto-generated. Do not edit!


(when (boundp 'fixposition_driver_ros1::gpgga)
  (if (not (find-package "FIXPOSITION_DRIVER_ROS1"))
    (make-package "FIXPOSITION_DRIVER_ROS1"))
  (shadow 'gpgga (find-package "FIXPOSITION_DRIVER_ROS1")))
(unless (find-package "FIXPOSITION_DRIVER_ROS1::GPGGA")
  (make-package "FIXPOSITION_DRIVER_ROS1::GPGGA"))

(in-package "ROS")
;;//! \htmlinclude gpgga.msg.html


(defclass fixposition_driver_ros1::gpgga
  :super ros::object
  :slots (_time _latitude _lat_ns _longitude _lon_ew _quality _num_sv _hdop _alt _alt_unit _diff_age _diff_sta _sentence ))

(defmethod fixposition_driver_ros1::gpgga
  (:init
   (&key
    ((:time __time) "")
    ((:latitude __latitude) 0.0)
    ((:lat_ns __lat_ns) 0)
    ((:longitude __longitude) 0.0)
    ((:lon_ew __lon_ew) 0)
    ((:quality __quality) 0)
    ((:num_sv __num_sv) 0)
    ((:hdop __hdop) 0.0)
    ((:alt __alt) 0.0)
    ((:alt_unit __alt_unit) 0)
    ((:diff_age __diff_age) 0.0)
    ((:diff_sta __diff_sta) "")
    ((:sentence __sentence) "")
    )
   (send-super :init)
   (setq _time (string __time))
   (setq _latitude (float __latitude))
   (setq _lat_ns (round __lat_ns))
   (setq _longitude (float __longitude))
   (setq _lon_ew (round __lon_ew))
   (setq _quality (round __quality))
   (setq _num_sv (round __num_sv))
   (setq _hdop (float __hdop))
   (setq _alt (float __alt))
   (setq _alt_unit (round __alt_unit))
   (setq _diff_age (float __diff_age))
   (setq _diff_sta (string __diff_sta))
   (setq _sentence (string __sentence))
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
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
  (:quality
   (&optional __quality)
   (if __quality (setq _quality __quality)) _quality)
  (:num_sv
   (&optional __num_sv)
   (if __num_sv (setq _num_sv __num_sv)) _num_sv)
  (:hdop
   (&optional __hdop)
   (if __hdop (setq _hdop __hdop)) _hdop)
  (:alt
   (&optional __alt)
   (if __alt (setq _alt __alt)) _alt)
  (:alt_unit
   (&optional __alt_unit)
   (if __alt_unit (setq _alt_unit __alt_unit)) _alt_unit)
  (:diff_age
   (&optional __diff_age)
   (if __diff_age (setq _diff_age __diff_age)) _diff_age)
  (:diff_sta
   (&optional __diff_sta)
   (if __diff_sta (setq _diff_sta __diff_sta)) _diff_sta)
  (:sentence
   (&optional __sentence)
   (if __sentence (setq _sentence __sentence)) _sentence)
  (:serialization-length
   ()
   (+
    ;; string _time
    4 (length _time)
    ;; float64 _latitude
    8
    ;; char _lat_ns
    1
    ;; float64 _longitude
    8
    ;; char _lon_ew
    1
    ;; int8 _quality
    1
    ;; int8 _num_sv
    1
    ;; float64 _hdop
    8
    ;; float64 _alt
    8
    ;; char _alt_unit
    1
    ;; float64 _diff_age
    8
    ;; string _diff_sta
    4 (length _diff_sta)
    ;; string _sentence
    4 (length _sentence)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _time
       (write-long (length _time) s) (princ _time s)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; char _lat_ns
       (write-byte _lat_ns s)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; char _lon_ew
       (write-byte _lon_ew s)
     ;; int8 _quality
       (write-byte _quality s)
     ;; int8 _num_sv
       (write-byte _num_sv s)
     ;; float64 _hdop
       (sys::poke _hdop (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _alt
       (sys::poke _alt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; char _alt_unit
       (write-byte _alt_unit s)
     ;; float64 _diff_age
       (sys::poke _diff_age (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _diff_sta
       (write-long (length _diff_sta) s) (princ _diff_sta s)
     ;; string _sentence
       (write-long (length _sentence) s) (princ _sentence s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; char _lat_ns
     (setq _lat_ns (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; char _lon_ew
     (setq _lon_ew (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int8 _quality
     (setq _quality (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _quality 127) (setq _quality (- _quality 256)))
   ;; int8 _num_sv
     (setq _num_sv (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _num_sv 127) (setq _num_sv (- _num_sv 256)))
   ;; float64 _hdop
     (setq _hdop (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _alt
     (setq _alt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; char _alt_unit
     (setq _alt_unit (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _diff_age
     (setq _diff_age (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _diff_sta
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _diff_sta (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _sentence
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sentence (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get fixposition_driver_ros1::gpgga :md5sum-) "923382eb309c5f8409774d790a9139d8")
(setf (get fixposition_driver_ros1::gpgga :datatype-) "fixposition_driver_ros1/gpgga")
(setf (get fixposition_driver_ros1::gpgga :definition-)
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
# Fixposition NMEA-GP-GGA Message
#
#
####################################################################################################

# Format | Field     | Unit              | Description
# -------|-----------|-------------------|----------------------------------------------------------------------|
string     time      # [hhmmss.ss(ss)]   | UTC time (hours, minutes and seconds).
float64    latitude  # [ddmm.mmmmm(mm)]  | Latitude.
char       lat_ns    # [-]               | Latitude north (N) or south (S) indicator.
float64    longitude # [dddmm.mmmmm(mm)] | Longitude.
char       lon_ew    # [-]               | Longitude east (E) or west (W) indicator.
int8       quality   # [-]               | Quality indicator (see below).
int8       num_sv    # [-]               | Number of satellites. Strict NMEA: 00-12. High-precision NMEA: 00-99.
float64    hdop      # [0.10-99.99]      | Horizontal dilution of precision.
float64    alt       # [m]               | Altitude (above ellipsoid).
char       alt_unit  # [-]               | Altitude unit, always M (metres).
float64    diff_age  # [-]               | Approximate age of differential data (last GPS MSM message received).
string     diff_sta  # [-]               | DGPS station ID (0000-1023).
string     sentence  # [-]               | ASCII string to be used by NTRIP clients.

# Quality indicator table
#
# | ID | Signal         |
# |----|----------------|
# |  0 | Invalid        |
# |  1 | Non-RTK fix    |
# |  4 | RTK fixed      |
# |  5 | RTK float      |
# |  6 | Dead-reckoning |

")



(provide :fixposition_driver_ros1/gpgga "923382eb309c5f8409774d790a9139d8")


