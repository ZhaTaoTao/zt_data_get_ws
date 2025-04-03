;; Auto-generated. Do not edit!


(when (boundp 'fixposition_driver_ros1::NMEA)
  (if (not (find-package "FIXPOSITION_DRIVER_ROS1"))
    (make-package "FIXPOSITION_DRIVER_ROS1"))
  (shadow 'NMEA (find-package "FIXPOSITION_DRIVER_ROS1")))
(unless (find-package "FIXPOSITION_DRIVER_ROS1::NMEA")
  (make-package "FIXPOSITION_DRIVER_ROS1::NMEA"))

(in-package "ROS")
;;//! \htmlinclude NMEA.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass fixposition_driver_ros1::NMEA
  :super ros::object
  :slots (_header _time _date _latitude _longitude _altitude _quality _num_sv _ids _hdop_rec _pdop _hdop _vdop _rms_range _std_major _std_minor _angle_major _std_lat _std_lon _std_alt _covariance _cov_type _heading _speed _course _diff_age _diff_sta _gnss_sats ))

(defmethod fixposition_driver_ros1::NMEA
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:time __time) "")
    ((:date __date) "")
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:quality __quality) 0)
    ((:num_sv __num_sv) 0)
    ((:ids __ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:hdop_rec __hdop_rec) 0.0)
    ((:pdop __pdop) 0.0)
    ((:hdop __hdop) 0.0)
    ((:vdop __vdop) 0.0)
    ((:rms_range __rms_range) 0.0)
    ((:std_major __std_major) 0.0)
    ((:std_minor __std_minor) 0.0)
    ((:angle_major __angle_major) 0.0)
    ((:std_lat __std_lat) 0.0)
    ((:std_lon __std_lon) 0.0)
    ((:std_alt __std_alt) 0.0)
    ((:covariance __covariance) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:cov_type __cov_type) 0)
    ((:heading __heading) 0.0)
    ((:speed __speed) 0.0)
    ((:course __course) 0.0)
    ((:diff_age __diff_age) 0.0)
    ((:diff_sta __diff_sta) "")
    ((:gnss_sats __gnss_sats) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _time (string __time))
   (setq _date (string __date))
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   (setq _quality (round __quality))
   (setq _num_sv (round __num_sv))
   (setq _ids __ids)
   (setq _hdop_rec (float __hdop_rec))
   (setq _pdop (float __pdop))
   (setq _hdop (float __hdop))
   (setq _vdop (float __vdop))
   (setq _rms_range (float __rms_range))
   (setq _std_major (float __std_major))
   (setq _std_minor (float __std_minor))
   (setq _angle_major (float __angle_major))
   (setq _std_lat (float __std_lat))
   (setq _std_lon (float __std_lon))
   (setq _std_alt (float __std_alt))
   (setq _covariance __covariance)
   (setq _cov_type (round __cov_type))
   (setq _heading (float __heading))
   (setq _speed (float __speed))
   (setq _course (float __course))
   (setq _diff_age (float __diff_age))
   (setq _diff_sta (string __diff_sta))
   (setq _gnss_sats __gnss_sats)
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
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:quality
   (&optional __quality)
   (if __quality (setq _quality __quality)) _quality)
  (:num_sv
   (&optional __num_sv)
   (if __num_sv (setq _num_sv __num_sv)) _num_sv)
  (:ids
   (&optional __ids)
   (if __ids (setq _ids __ids)) _ids)
  (:hdop_rec
   (&optional __hdop_rec)
   (if __hdop_rec (setq _hdop_rec __hdop_rec)) _hdop_rec)
  (:pdop
   (&optional __pdop)
   (if __pdop (setq _pdop __pdop)) _pdop)
  (:hdop
   (&optional __hdop)
   (if __hdop (setq _hdop __hdop)) _hdop)
  (:vdop
   (&optional __vdop)
   (if __vdop (setq _vdop __vdop)) _vdop)
  (:rms_range
   (&optional __rms_range)
   (if __rms_range (setq _rms_range __rms_range)) _rms_range)
  (:std_major
   (&optional __std_major)
   (if __std_major (setq _std_major __std_major)) _std_major)
  (:std_minor
   (&optional __std_minor)
   (if __std_minor (setq _std_minor __std_minor)) _std_minor)
  (:angle_major
   (&optional __angle_major)
   (if __angle_major (setq _angle_major __angle_major)) _angle_major)
  (:std_lat
   (&optional __std_lat)
   (if __std_lat (setq _std_lat __std_lat)) _std_lat)
  (:std_lon
   (&optional __std_lon)
   (if __std_lon (setq _std_lon __std_lon)) _std_lon)
  (:std_alt
   (&optional __std_alt)
   (if __std_alt (setq _std_alt __std_alt)) _std_alt)
  (:covariance
   (&optional __covariance)
   (if __covariance (setq _covariance __covariance)) _covariance)
  (:cov_type
   (&optional __cov_type)
   (if __cov_type (setq _cov_type __cov_type)) _cov_type)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:course
   (&optional __course)
   (if __course (setq _course __course)) _course)
  (:diff_age
   (&optional __diff_age)
   (if __diff_age (setq _diff_age __diff_age)) _diff_age)
  (:diff_sta
   (&optional __diff_sta)
   (if __diff_sta (setq _diff_sta __diff_sta)) _diff_sta)
  (:gnss_sats
   (&rest __gnss_sats)
   (if (keywordp (car __gnss_sats))
       (send* _gnss_sats __gnss_sats)
     (progn
       (if __gnss_sats (setq _gnss_sats (car __gnss_sats)))
       _gnss_sats)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _time
    4 (length _time)
    ;; string _date
    4 (length _date)
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float64 _altitude
    8
    ;; int8 _quality
    1
    ;; int8 _num_sv
    1
    ;; int8[] _ids
    (* 1    (length _ids)) 4
    ;; float64 _hdop_rec
    8
    ;; float64 _pdop
    8
    ;; float64 _hdop
    8
    ;; float64 _vdop
    8
    ;; float64 _rms_range
    8
    ;; float64 _std_major
    8
    ;; float64 _std_minor
    8
    ;; float64 _angle_major
    8
    ;; float64 _std_lat
    8
    ;; float64 _std_lon
    8
    ;; float64 _std_alt
    8
    ;; float64[9] _covariance
    (* 8    9)
    ;; int8 _cov_type
    1
    ;; float64 _heading
    8
    ;; float64 _speed
    8
    ;; float64 _course
    8
    ;; float64 _diff_age
    8
    ;; string _diff_sta
    4 (length _diff_sta)
    ;; fixposition_driver_ros1/GnssSats[] _gnss_sats
    (apply #'+ (send-all _gnss_sats :serialization-length)) 4
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
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int8 _quality
       (write-byte _quality s)
     ;; int8 _num_sv
       (write-byte _num_sv s)
     ;; int8[] _ids
     (write-long (length _ids) s)
     (dotimes (i (length _ids))
       (write-byte (elt _ids i) s)
       )
     ;; float64 _hdop_rec
       (sys::poke _hdop_rec (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pdop
       (sys::poke _pdop (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _hdop
       (sys::poke _hdop (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vdop
       (sys::poke _vdop (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rms_range
       (sys::poke _rms_range (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _std_major
       (sys::poke _std_major (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _std_minor
       (sys::poke _std_minor (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angle_major
       (sys::poke _angle_major (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _std_lat
       (sys::poke _std_lat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _std_lon
       (sys::poke _std_lon (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _std_alt
       (sys::poke _std_alt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[9] _covariance
     (dotimes (i 9)
       (sys::poke (elt _covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; int8 _cov_type
       (write-byte _cov_type s)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _course
       (sys::poke _course (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _diff_age
       (sys::poke _diff_age (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _diff_sta
       (write-long (length _diff_sta) s) (princ _diff_sta s)
     ;; fixposition_driver_ros1/GnssSats[] _gnss_sats
     (write-long (length _gnss_sats) s)
     (dolist (elem _gnss_sats)
       (send elem :serialize s)
       )
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
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int8 _quality
     (setq _quality (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _quality 127) (setq _quality (- _quality 256)))
   ;; int8 _num_sv
     (setq _num_sv (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _num_sv 127) (setq _num_sv (- _num_sv 256)))
   ;; int8[] _ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _ids i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _ids i) 127) (setf (elt _ids i) (- (elt _ids i) 256)))
     ))
   ;; float64 _hdop_rec
     (setq _hdop_rec (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pdop
     (setq _pdop (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _hdop
     (setq _hdop (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vdop
     (setq _vdop (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rms_range
     (setq _rms_range (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _std_major
     (setq _std_major (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _std_minor
     (setq _std_minor (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angle_major
     (setq _angle_major (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _std_lat
     (setq _std_lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _std_lon
     (setq _std_lon (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _std_alt
     (setq _std_alt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[9] _covariance
   (dotimes (i (length _covariance))
     (setf (elt _covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; int8 _cov_type
     (setq _cov_type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _cov_type 127) (setq _cov_type (- _cov_type 256)))
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _course
     (setq _course (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _diff_age
     (setq _diff_age (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _diff_sta
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _diff_sta (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; fixposition_driver_ros1/GnssSats[] _gnss_sats
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _gnss_sats (let (r) (dotimes (i n) (push (instance fixposition_driver_ros1::GnssSats :init) r)) r))
     (dolist (elem- _gnss_sats)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get fixposition_driver_ros1::NMEA :md5sum-) "ec17f8d2bc98980ffc7004f565692fa0")
(setf (get fixposition_driver_ros1::NMEA :datatype-) "fixposition_driver_ros1/NMEA")
(setf (get fixposition_driver_ros1::NMEA :definition-)
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
# Fixposition NMEA Message. Specified using the WGS 84 reference ellipsoid.
#
#
####################################################################################################

# Format  | Field       | Unit              | Description
# --------|-------------|-------------------|----------------------------------------------------------------------|
Header      header      # [ns]              | Specifies the ROS time and Euclidian reference frame.
string      time        # [hhmmss.ss(ss)]   | UTC time (hours, minutes and seconds).
string      date        # [ddmmyy]          | UTC date (day, month and year).
float64     latitude    # [ddmm.mmmmm(mm)]  | Latitude. Positive is north of equator; negative is south.
float64     longitude   # [dddmm.mmmmm(mm)] | Longitude. Positive is east of prime meridian; negative is west.
float64     altitude    # [m]               | Altitude. Positive is above the WGS 84 ellipsoid.
int8        quality     # [-]               | Quality indicator (see below).
int8        num_sv      # [-]               | Number of satellites. Strict NMEA: 00-12. High-precision NMEA: 00-99.
int8[]      ids         # [-]               | ID numbers of satellites used in solution. See the NMEA 0183 version 4.11 standard document.
float64     hdop_rec    # [0.10-99.99]      | Horizontal dilution of precision.
float64     pdop        # [-]               | Position dillution of precision.
float64     hdop        # [-]               | Horizontal dillution of precision.
float64     vdop        # [-]               | Vertical dillution of precision.
float64     rms_range   # [-]               | RMS value of the standard deviation of the range inputs to the navigation process.
float64     std_major   # [m]               | Standard deviation of semi-major axis of error ellipse.
float64     std_minor   # [m]               | Standard deviation of semi-minor axis of error ellipse.
float64     angle_major # [deg]             | Angle of semi-major axis of error ellipse from true North.
float64     std_lat     # [m]               | Standard deviation of latitude error.
float64     std_lon     # [m]               | Standard deviation of longitude error.
float64     std_alt     # [m]               | Standard deviation of altitude error.
float64[9]  covariance  # [m2]              | Position covariance defined relative to a tangential plane (ENU frame).
int8        cov_type    # [-]               | Method employed to estimate covariance (see below).
float64     heading     # [deg]             | True heading.
float64     speed       # [m/s]             | Speed over ground.
float64     course      # [deg]             | Course over ground (w.r.t. True North).
float64     diff_age    # [-]               | Approximate age of differential data (last GPS MSM message received).
string      diff_sta    # [-]               | DGPS station ID (0000-1023).
fixposition_driver_ros1/GnssSats[] gnss_sats # [-]| GNSS satellite signal statistics.

# Quality indicator table
#
# | ID | Signal         |
# |----|----------------|
# |  0 | Invalid        |
# |  1 | Non-RTK fix    |
# |  4 | RTK fixed      |
# |  5 | RTK float      |
# |  6 | Dead-reckoning |


# Covariance type table
#
# | ID | Signal         |
# |----|----------------|
# |  0 | Unknown        |
# |  1 | Approximated   |
# |  2 | Diagonal known |
# |  3 | Known          |

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
MSG: fixposition_driver_ros1/GnssSats
####################################################################################################
#
#    Copyright (c) 2023  ___     ___
#                       \\\\  \\\\  /  /
#                        \\\\  \\\\/  /
#                         /  /\\\\  \\\\
#                        /__/  \\\\__\\\\  Fixposition AG
#
####################################################################################################
#
# Fixposition GNSS satellite signal statistics message.
#
#
####################################################################################################

# Format | Field         | Unit    | Description
# -------|---------------|---------|------------------------------------|
string     constellation # [Hex]   | Signal ID (see below).
int16[]    sat_id        # [-]     | Satellite ID number.
int16[]    azim          # [deg]   | Satellite azimuth from true North.
int16[]    elev          # [deg]   | Satellite elevation.
int16[]    cno_l1        # [db-Hz] | Satellite SNR (C/No) for L1-band.
int16[]    cno_l2        # [db-Hz] | Satellite SNR (C/No) for L2-band.

")



(provide :fixposition_driver_ros1/NMEA "ec17f8d2bc98980ffc7004f565692fa0")


