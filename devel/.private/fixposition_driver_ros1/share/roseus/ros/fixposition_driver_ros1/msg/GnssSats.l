;; Auto-generated. Do not edit!


(when (boundp 'fixposition_driver_ros1::GnssSats)
  (if (not (find-package "FIXPOSITION_DRIVER_ROS1"))
    (make-package "FIXPOSITION_DRIVER_ROS1"))
  (shadow 'GnssSats (find-package "FIXPOSITION_DRIVER_ROS1")))
(unless (find-package "FIXPOSITION_DRIVER_ROS1::GNSSSATS")
  (make-package "FIXPOSITION_DRIVER_ROS1::GNSSSATS"))

(in-package "ROS")
;;//! \htmlinclude GnssSats.msg.html


(defclass fixposition_driver_ros1::GnssSats
  :super ros::object
  :slots (_constellation _sat_id _azim _elev _cno_l1 _cno_l2 ))

(defmethod fixposition_driver_ros1::GnssSats
  (:init
   (&key
    ((:constellation __constellation) "")
    ((:sat_id __sat_id) (make-array 0 :initial-element 0 :element-type :integer))
    ((:azim __azim) (make-array 0 :initial-element 0 :element-type :integer))
    ((:elev __elev) (make-array 0 :initial-element 0 :element-type :integer))
    ((:cno_l1 __cno_l1) (make-array 0 :initial-element 0 :element-type :integer))
    ((:cno_l2 __cno_l2) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _constellation (string __constellation))
   (setq _sat_id __sat_id)
   (setq _azim __azim)
   (setq _elev __elev)
   (setq _cno_l1 __cno_l1)
   (setq _cno_l2 __cno_l2)
   self)
  (:constellation
   (&optional __constellation)
   (if __constellation (setq _constellation __constellation)) _constellation)
  (:sat_id
   (&optional __sat_id)
   (if __sat_id (setq _sat_id __sat_id)) _sat_id)
  (:azim
   (&optional __azim)
   (if __azim (setq _azim __azim)) _azim)
  (:elev
   (&optional __elev)
   (if __elev (setq _elev __elev)) _elev)
  (:cno_l1
   (&optional __cno_l1)
   (if __cno_l1 (setq _cno_l1 __cno_l1)) _cno_l1)
  (:cno_l2
   (&optional __cno_l2)
   (if __cno_l2 (setq _cno_l2 __cno_l2)) _cno_l2)
  (:serialization-length
   ()
   (+
    ;; string _constellation
    4 (length _constellation)
    ;; int16[] _sat_id
    (* 2    (length _sat_id)) 4
    ;; int16[] _azim
    (* 2    (length _azim)) 4
    ;; int16[] _elev
    (* 2    (length _elev)) 4
    ;; int16[] _cno_l1
    (* 2    (length _cno_l1)) 4
    ;; int16[] _cno_l2
    (* 2    (length _cno_l2)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _constellation
       (write-long (length _constellation) s) (princ _constellation s)
     ;; int16[] _sat_id
     (write-long (length _sat_id) s)
     (dotimes (i (length _sat_id))
       (write-word (elt _sat_id i) s)
       )
     ;; int16[] _azim
     (write-long (length _azim) s)
     (dotimes (i (length _azim))
       (write-word (elt _azim i) s)
       )
     ;; int16[] _elev
     (write-long (length _elev) s)
     (dotimes (i (length _elev))
       (write-word (elt _elev i) s)
       )
     ;; int16[] _cno_l1
     (write-long (length _cno_l1) s)
     (dotimes (i (length _cno_l1))
       (write-word (elt _cno_l1 i) s)
       )
     ;; int16[] _cno_l2
     (write-long (length _cno_l2) s)
     (dotimes (i (length _cno_l2))
       (write-word (elt _cno_l2 i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _constellation
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _constellation (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16[] _sat_id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sat_id (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _sat_id i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16[] _azim
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _azim (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _azim i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16[] _elev
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _elev (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _elev i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16[] _cno_l1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cno_l1 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _cno_l1 i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16[] _cno_l2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cno_l2 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _cno_l2 i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;;
   self)
  )

(setf (get fixposition_driver_ros1::GnssSats :md5sum-) "048fb6a4e516eca717a91a2a5ccba58b")
(setf (get fixposition_driver_ros1::GnssSats :datatype-) "fixposition_driver_ros1/GnssSats")
(setf (get fixposition_driver_ros1::GnssSats :definition-)
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



(provide :fixposition_driver_ros1/GnssSats "048fb6a4e516eca717a91a2a5ccba58b")


