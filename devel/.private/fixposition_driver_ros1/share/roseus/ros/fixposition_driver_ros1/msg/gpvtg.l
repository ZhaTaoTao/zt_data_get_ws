;; Auto-generated. Do not edit!


(when (boundp 'fixposition_driver_ros1::gpvtg)
  (if (not (find-package "FIXPOSITION_DRIVER_ROS1"))
    (make-package "FIXPOSITION_DRIVER_ROS1"))
  (shadow 'gpvtg (find-package "FIXPOSITION_DRIVER_ROS1")))
(unless (find-package "FIXPOSITION_DRIVER_ROS1::GPVTG")
  (make-package "FIXPOSITION_DRIVER_ROS1::GPVTG"))

(in-package "ROS")
;;//! \htmlinclude gpvtg.msg.html


(defclass fixposition_driver_ros1::gpvtg
  :super ros::object
  :slots (_cog_true _cog_ref_t _cog_mag _cog_ref_m _sog_knot _sog_unit_n _sog_kph _sog_unit_k _mode ))

(defmethod fixposition_driver_ros1::gpvtg
  (:init
   (&key
    ((:cog_true __cog_true) 0.0)
    ((:cog_ref_t __cog_ref_t) 0)
    ((:cog_mag __cog_mag) 0.0)
    ((:cog_ref_m __cog_ref_m) 0)
    ((:sog_knot __sog_knot) 0.0)
    ((:sog_unit_n __sog_unit_n) 0)
    ((:sog_kph __sog_kph) 0.0)
    ((:sog_unit_k __sog_unit_k) 0)
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _cog_true (float __cog_true))
   (setq _cog_ref_t (round __cog_ref_t))
   (setq _cog_mag (float __cog_mag))
   (setq _cog_ref_m (round __cog_ref_m))
   (setq _sog_knot (float __sog_knot))
   (setq _sog_unit_n (round __sog_unit_n))
   (setq _sog_kph (float __sog_kph))
   (setq _sog_unit_k (round __sog_unit_k))
   (setq _mode (round __mode))
   self)
  (:cog_true
   (&optional __cog_true)
   (if __cog_true (setq _cog_true __cog_true)) _cog_true)
  (:cog_ref_t
   (&optional __cog_ref_t)
   (if __cog_ref_t (setq _cog_ref_t __cog_ref_t)) _cog_ref_t)
  (:cog_mag
   (&optional __cog_mag)
   (if __cog_mag (setq _cog_mag __cog_mag)) _cog_mag)
  (:cog_ref_m
   (&optional __cog_ref_m)
   (if __cog_ref_m (setq _cog_ref_m __cog_ref_m)) _cog_ref_m)
  (:sog_knot
   (&optional __sog_knot)
   (if __sog_knot (setq _sog_knot __sog_knot)) _sog_knot)
  (:sog_unit_n
   (&optional __sog_unit_n)
   (if __sog_unit_n (setq _sog_unit_n __sog_unit_n)) _sog_unit_n)
  (:sog_kph
   (&optional __sog_kph)
   (if __sog_kph (setq _sog_kph __sog_kph)) _sog_kph)
  (:sog_unit_k
   (&optional __sog_unit_k)
   (if __sog_unit_k (setq _sog_unit_k __sog_unit_k)) _sog_unit_k)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; float64 _cog_true
    8
    ;; char _cog_ref_t
    1
    ;; float64 _cog_mag
    8
    ;; char _cog_ref_m
    1
    ;; float64 _sog_knot
    8
    ;; char _sog_unit_n
    1
    ;; float64 _sog_kph
    8
    ;; char _sog_unit_k
    1
    ;; char _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _cog_true
       (sys::poke _cog_true (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; char _cog_ref_t
       (write-byte _cog_ref_t s)
     ;; float64 _cog_mag
       (sys::poke _cog_mag (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; char _cog_ref_m
       (write-byte _cog_ref_m s)
     ;; float64 _sog_knot
       (sys::poke _sog_knot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; char _sog_unit_n
       (write-byte _sog_unit_n s)
     ;; float64 _sog_kph
       (sys::poke _sog_kph (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; char _sog_unit_k
       (write-byte _sog_unit_k s)
     ;; char _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _cog_true
     (setq _cog_true (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; char _cog_ref_t
     (setq _cog_ref_t (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _cog_mag
     (setq _cog_mag (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; char _cog_ref_m
     (setq _cog_ref_m (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _sog_knot
     (setq _sog_knot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; char _sog_unit_n
     (setq _sog_unit_n (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _sog_kph
     (setq _sog_kph (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; char _sog_unit_k
     (setq _sog_unit_k (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; char _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get fixposition_driver_ros1::gpvtg :md5sum-) "a44dc6b882f07ff5b8c222767876cea2")
(setf (get fixposition_driver_ros1::gpvtg :datatype-) "fixposition_driver_ros1/gpvtg")
(setf (get fixposition_driver_ros1::gpvtg :definition-)
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
# Fixposition NMEA-GP-VTG Message
#
#
####################################################################################################

# Format | Field      | Unit    | Description
# -------|------------|---------|--------------------------------------------------------|
float64    cog_true   # [deg]   | Course over ground wrt. True North.
char       cog_ref_t  # [-]     | COG reference, always T (true).
float64    cog_mag    # [-]     | Course over ground w.r.t. Magnetic North, always null.
char       cog_ref_m  # [-]     | COG reference, always M (magnetic).
float64    sog_knot   # [knots] | Speed over ground in knots.
char       sog_unit_n # [-]     | SOG reference, always N (knots).
float64    sog_kph    # [km/h]  | Speed over ground in km/h.
char       sog_unit_k # [-]     | SOG reference, always K (km/h).
char       mode       # [-]     | Positioning system mode indicator (see below).

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



(provide :fixposition_driver_ros1/gpvtg "a44dc6b882f07ff5b8c222767876cea2")


