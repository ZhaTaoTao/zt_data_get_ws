;; Auto-generated. Do not edit!


(when (boundp 'fixposition_driver_ros1::gngsa)
  (if (not (find-package "FIXPOSITION_DRIVER_ROS1"))
    (make-package "FIXPOSITION_DRIVER_ROS1"))
  (shadow 'gngsa (find-package "FIXPOSITION_DRIVER_ROS1")))
(unless (find-package "FIXPOSITION_DRIVER_ROS1::GNGSA")
  (make-package "FIXPOSITION_DRIVER_ROS1::GNGSA"))

(in-package "ROS")
;;//! \htmlinclude gngsa.msg.html


(defclass fixposition_driver_ros1::gngsa
  :super ros::object
  :slots (_mode_op _mode_nav _ids _pdop _hdop _vdop _gnss_id ))

(defmethod fixposition_driver_ros1::gngsa
  (:init
   (&key
    ((:mode_op __mode_op) 0)
    ((:mode_nav __mode_nav) 0)
    ((:ids __ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:pdop __pdop) 0.0)
    ((:hdop __hdop) 0.0)
    ((:vdop __vdop) 0.0)
    ((:gnss_id __gnss_id) 0)
    )
   (send-super :init)
   (setq _mode_op (round __mode_op))
   (setq _mode_nav (round __mode_nav))
   (setq _ids __ids)
   (setq _pdop (float __pdop))
   (setq _hdop (float __hdop))
   (setq _vdop (float __vdop))
   (setq _gnss_id (round __gnss_id))
   self)
  (:mode_op
   (&optional __mode_op)
   (if __mode_op (setq _mode_op __mode_op)) _mode_op)
  (:mode_nav
   (&optional __mode_nav)
   (if __mode_nav (setq _mode_nav __mode_nav)) _mode_nav)
  (:ids
   (&optional __ids)
   (if __ids (setq _ids __ids)) _ids)
  (:pdop
   (&optional __pdop)
   (if __pdop (setq _pdop __pdop)) _pdop)
  (:hdop
   (&optional __hdop)
   (if __hdop (setq _hdop __hdop)) _hdop)
  (:vdop
   (&optional __vdop)
   (if __vdop (setq _vdop __vdop)) _vdop)
  (:gnss_id
   (&optional __gnss_id)
   (if __gnss_id (setq _gnss_id __gnss_id)) _gnss_id)
  (:serialization-length
   ()
   (+
    ;; char _mode_op
    1
    ;; int8 _mode_nav
    1
    ;; int8[] _ids
    (* 1    (length _ids)) 4
    ;; float64 _pdop
    8
    ;; float64 _hdop
    8
    ;; float64 _vdop
    8
    ;; int8 _gnss_id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; char _mode_op
       (write-byte _mode_op s)
     ;; int8 _mode_nav
       (write-byte _mode_nav s)
     ;; int8[] _ids
     (write-long (length _ids) s)
     (dotimes (i (length _ids))
       (write-byte (elt _ids i) s)
       )
     ;; float64 _pdop
       (sys::poke _pdop (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _hdop
       (sys::poke _hdop (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vdop
       (sys::poke _vdop (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int8 _gnss_id
       (write-byte _gnss_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; char _mode_op
     (setq _mode_op (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int8 _mode_nav
     (setq _mode_nav (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _mode_nav 127) (setq _mode_nav (- _mode_nav 256)))
   ;; int8[] _ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _ids i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _ids i) 127) (setf (elt _ids i) (- (elt _ids i) 256)))
     ))
   ;; float64 _pdop
     (setq _pdop (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _hdop
     (setq _hdop (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vdop
     (setq _vdop (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int8 _gnss_id
     (setq _gnss_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _gnss_id 127) (setq _gnss_id (- _gnss_id 256)))
   ;;
   self)
  )

(setf (get fixposition_driver_ros1::gngsa :md5sum-) "8e04c2fa8cea888c64fc400d41a1a650")
(setf (get fixposition_driver_ros1::gngsa :datatype-) "fixposition_driver_ros1/gngsa")
(setf (get fixposition_driver_ros1::gngsa :definition-)
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
# Fixposition NMEA-GN-GSA Message
#
#
####################################################################################################

# Format | Field    | Unit | Description
# -------|----------|------|----------------------------------------------------------------------------------------------|
char       mode_op  #  [-] | Operation mode: always A (automatic, allowed to automatically switch 2D/3D).
int8       mode_nav #  [-] | Navigation mode: 1 (fix not available), 2 (2D) or 3 (3D).
int8[]     ids      #  [-] | ID numbers of satellites used in solution. See the NMEA 0183 version 4.11 standard document.
float64    pdop     #  [-] | Position dillution of precision.
float64    hdop     #  [-] | Horizontal dillution of precision.
float64    vdop     #  [-] | Vertical dillution of precision.
int8       gnss_id  #  [-] | GNSS system ID: 1 (GPS, SBAS), 2 (GLONASS), 3 (Galileo), 4 (BeiDou), 5 (QZSS).

")



(provide :fixposition_driver_ros1/gngsa "8e04c2fa8cea888c64fc400d41a1a650")


