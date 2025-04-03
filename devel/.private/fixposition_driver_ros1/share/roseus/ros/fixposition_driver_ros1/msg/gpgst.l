;; Auto-generated. Do not edit!


(when (boundp 'fixposition_driver_ros1::gpgst)
  (if (not (find-package "FIXPOSITION_DRIVER_ROS1"))
    (make-package "FIXPOSITION_DRIVER_ROS1"))
  (shadow 'gpgst (find-package "FIXPOSITION_DRIVER_ROS1")))
(unless (find-package "FIXPOSITION_DRIVER_ROS1::GPGST")
  (make-package "FIXPOSITION_DRIVER_ROS1::GPGST"))

(in-package "ROS")
;;//! \htmlinclude gpgst.msg.html


(defclass fixposition_driver_ros1::gpgst
  :super ros::object
  :slots (_time _rms_range _std_major _std_minor _angle_major _std_lat _std_lon _std_alt ))

(defmethod fixposition_driver_ros1::gpgst
  (:init
   (&key
    ((:time __time) "")
    ((:rms_range __rms_range) 0.0)
    ((:std_major __std_major) 0.0)
    ((:std_minor __std_minor) 0.0)
    ((:angle_major __angle_major) 0.0)
    ((:std_lat __std_lat) 0.0)
    ((:std_lon __std_lon) 0.0)
    ((:std_alt __std_alt) 0.0)
    )
   (send-super :init)
   (setq _time (string __time))
   (setq _rms_range (float __rms_range))
   (setq _std_major (float __std_major))
   (setq _std_minor (float __std_minor))
   (setq _angle_major (float __angle_major))
   (setq _std_lat (float __std_lat))
   (setq _std_lon (float __std_lon))
   (setq _std_alt (float __std_alt))
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
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
  (:serialization-length
   ()
   (+
    ;; string _time
    4 (length _time)
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
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _time
       (write-long (length _time) s) (princ _time s)
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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
   ;;
   self)
  )

(setf (get fixposition_driver_ros1::gpgst :md5sum-) "3488fe86af0a80e28c42198845ea643a")
(setf (get fixposition_driver_ros1::gpgst :datatype-) "fixposition_driver_ros1/gpgst")
(setf (get fixposition_driver_ros1::gpgst :definition-)
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
# Fixposition NMEA-GP-GST Message
#
#
####################################################################################################

# Format | Field       | Unit            | Description
# -------|-------------|-----------------|------------------------------------------------------------------------------------|
string     time        # [hhmmss.ss(ss)] | UTC time (hours, minutes and seconds).
float64    rms_range   # [-]             | RMS value of the standard deviation of the range inputs to the navigation process.
float64    std_major   # [m]             | Standard deviation of semi-major axis of error ellipse.
float64    std_minor   # [m]             | Standard deviation of semi-minor axis of error ellipse.
float64    angle_major # [deg]           | Angle of semi-major axis of error ellipse from true North.
float64    std_lat     # [m]             | Standard deviation of latitude error.
float64    std_lon     # [m]             | Standard deviation of longitude error.
float64    std_alt     # [m]             | Standard deviation of altitude error.

")



(provide :fixposition_driver_ros1/gpgst "3488fe86af0a80e28c42198845ea643a")


