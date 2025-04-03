;; Auto-generated. Do not edit!


(when (boundp 'fixposition_driver_ros1::tp)
  (if (not (find-package "FIXPOSITION_DRIVER_ROS1"))
    (make-package "FIXPOSITION_DRIVER_ROS1"))
  (shadow 'tp (find-package "FIXPOSITION_DRIVER_ROS1")))
(unless (find-package "FIXPOSITION_DRIVER_ROS1::TP")
  (make-package "FIXPOSITION_DRIVER_ROS1::TP"))

(in-package "ROS")
;;//! \htmlinclude tp.msg.html


(defclass fixposition_driver_ros1::tp
  :super ros::object
  :slots (_tp_name _timebase _timeref _tp_tow_sec _tp_tow_psec _gps_leaps ))

(defmethod fixposition_driver_ros1::tp
  (:init
   (&key
    ((:tp_name __tp_name) "")
    ((:timebase __timebase) "")
    ((:timeref __timeref) "")
    ((:tp_tow_sec __tp_tow_sec) 0)
    ((:tp_tow_psec __tp_tow_psec) 0.0)
    ((:gps_leaps __gps_leaps) 0)
    )
   (send-super :init)
   (setq _tp_name (string __tp_name))
   (setq _timebase (string __timebase))
   (setq _timeref (string __timeref))
   (setq _tp_tow_sec (round __tp_tow_sec))
   (setq _tp_tow_psec (float __tp_tow_psec))
   (setq _gps_leaps (round __gps_leaps))
   self)
  (:tp_name
   (&optional __tp_name)
   (if __tp_name (setq _tp_name __tp_name)) _tp_name)
  (:timebase
   (&optional __timebase)
   (if __timebase (setq _timebase __timebase)) _timebase)
  (:timeref
   (&optional __timeref)
   (if __timeref (setq _timeref __timeref)) _timeref)
  (:tp_tow_sec
   (&optional __tp_tow_sec)
   (if __tp_tow_sec (setq _tp_tow_sec __tp_tow_sec)) _tp_tow_sec)
  (:tp_tow_psec
   (&optional __tp_tow_psec)
   (if __tp_tow_psec (setq _tp_tow_psec __tp_tow_psec)) _tp_tow_psec)
  (:gps_leaps
   (&optional __gps_leaps)
   (if __gps_leaps (setq _gps_leaps __gps_leaps)) _gps_leaps)
  (:serialization-length
   ()
   (+
    ;; string _tp_name
    4 (length _tp_name)
    ;; string _timebase
    4 (length _timebase)
    ;; string _timeref
    4 (length _timeref)
    ;; int64 _tp_tow_sec
    8
    ;; float64 _tp_tow_psec
    8
    ;; int64 _gps_leaps
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _tp_name
       (write-long (length _tp_name) s) (princ _tp_name s)
     ;; string _timebase
       (write-long (length _timebase) s) (princ _timebase s)
     ;; string _timeref
       (write-long (length _timeref) s) (princ _timeref s)
     ;; int64 _tp_tow_sec
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _tp_tow_sec (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _tp_tow_sec) (= (length (_tp_tow_sec . bv)) 2)) ;; bignum
              (write-long (ash (elt (_tp_tow_sec . bv) 0) 0) s)
              (write-long (ash (elt (_tp_tow_sec . bv) 1) -1) s))
             ((and (class _tp_tow_sec) (= (length (_tp_tow_sec . bv)) 1)) ;; big1
              (write-long (elt (_tp_tow_sec . bv) 0) s)
              (write-long (if (>= _tp_tow_sec 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _tp_tow_sec s)(write-long (if (>= _tp_tow_sec 0) 0 #xffffffff) s)))
     ;; float64 _tp_tow_psec
       (sys::poke _tp_tow_psec (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int64 _gps_leaps
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _gps_leaps (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _gps_leaps) (= (length (_gps_leaps . bv)) 2)) ;; bignum
              (write-long (ash (elt (_gps_leaps . bv) 0) 0) s)
              (write-long (ash (elt (_gps_leaps . bv) 1) -1) s))
             ((and (class _gps_leaps) (= (length (_gps_leaps . bv)) 1)) ;; big1
              (write-long (elt (_gps_leaps . bv) 0) s)
              (write-long (if (>= _gps_leaps 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _gps_leaps s)(write-long (if (>= _gps_leaps 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _tp_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tp_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _timebase
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _timebase (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _timeref
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _timeref (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _tp_tow_sec
#+(or :alpha :irix6 :x86_64)
      (setf _tp_tow_sec (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _tp_tow_sec (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _tp_tow_psec
     (setq _tp_tow_psec (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int64 _gps_leaps
#+(or :alpha :irix6 :x86_64)
      (setf _gps_leaps (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _gps_leaps (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get fixposition_driver_ros1::tp :md5sum-) "fb47e0dd4a2fae13d470d2c34ba242f0")
(setf (get fixposition_driver_ros1::tp :datatype-) "fixposition_driver_ros1/tp")
(setf (get fixposition_driver_ros1::tp :definition-)
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
# Fixposition FP_A-TP Message
#
#
####################################################################################################

string  tp_name                              # Timepulse name (source)
string  timebase                             # Time base (see below), or null if not available
string  timeref                              # Time reference (see below), or null if not available
int64   tp_tow_sec                           # Timepulse time seconds of week, integer second part (0–604799), or null
float64 tp_tow_psec                          # Timepulse time seconds of week, sub-second part (0.000000000000–0.999999999999), or null
int64   gps_leaps                            # GPS leapseconds, or null if unknown


# Values for timebase
#
# | Value | Description               |
# |-------|---------------------------|
# |  null | No timepulse alignment    |
# |  GNSS | Timepulse aligned to GNSS |
# |   UTC | Timepulse aligned to UTC  |


# Values for timeref if timebase is GNSS
#
# | Value | Description                     |
# |-------|---------------------------------|
# |   GPS | Timepulse aligned to GPS        |
# |   GAL | Timepulse aligned to Galileo    |
# |   BDS | Timepulse aligned to BeiDou     |
# |   GLO | Timepulse aligned to GLONASS    |
# | OTHER | Timepulse aligned to other GNSS |


# Values for timeref if timebase is UTC
#
# | Value | Description                                                                |
# |-------|----------------------------------------------------------------------------|
# |  NONE | Timepulse aligned to no UTC (no precise UTC parameters known yet)          |
# |   CRL | Timepulse aligned to Communications Research Laboratory (CRL), Japan       |
# |  NIST | Timepulse aligned to National Institute of Standards and Technology (NIST) |
# |  USNO | Timepulse aligned to U.S. Naval Observatory (USNO)                         |
# |  BIPM | Timepulse aligned to International Bureau of Weights and Measures (BIPM)   |
# |    EU | Timepulse aligned to European laboratories                                 |
# |    SU | Timepulse aligned to Former Soviet Union (SU)                              |
# |  NTSC | Timepulse aligned to National Time Service Center (NTSC), China            |
# | OTHER | Timepulse aligned to other/unknown UTC                                     |

")



(provide :fixposition_driver_ros1/tp "fb47e0dd4a2fae13d470d2c34ba242f0")


