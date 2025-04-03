;; Auto-generated. Do not edit!


(when (boundp 'fixposition_driver_ros1::gxgsv)
  (if (not (find-package "FIXPOSITION_DRIVER_ROS1"))
    (make-package "FIXPOSITION_DRIVER_ROS1"))
  (shadow 'gxgsv (find-package "FIXPOSITION_DRIVER_ROS1")))
(unless (find-package "FIXPOSITION_DRIVER_ROS1::GXGSV")
  (make-package "FIXPOSITION_DRIVER_ROS1::GXGSV"))

(in-package "ROS")
;;//! \htmlinclude gxgsv.msg.html


(defclass fixposition_driver_ros1::gxgsv
  :super ros::object
  :slots (_sentences _sent_num _num_sats _sat_id _elev _azim _cno _signal_id ))

(defmethod fixposition_driver_ros1::gxgsv
  (:init
   (&key
    ((:sentences __sentences) 0)
    ((:sent_num __sent_num) 0)
    ((:num_sats __num_sats) 0)
    ((:sat_id __sat_id) (make-array 0 :initial-element 0 :element-type :integer))
    ((:elev __elev) (make-array 0 :initial-element 0 :element-type :integer))
    ((:azim __azim) (make-array 0 :initial-element 0 :element-type :integer))
    ((:cno __cno) (make-array 0 :initial-element 0 :element-type :integer))
    ((:signal_id __signal_id) "")
    )
   (send-super :init)
   (setq _sentences (round __sentences))
   (setq _sent_num (round __sent_num))
   (setq _num_sats (round __num_sats))
   (setq _sat_id __sat_id)
   (setq _elev __elev)
   (setq _azim __azim)
   (setq _cno __cno)
   (setq _signal_id (string __signal_id))
   self)
  (:sentences
   (&optional __sentences)
   (if __sentences (setq _sentences __sentences)) _sentences)
  (:sent_num
   (&optional __sent_num)
   (if __sent_num (setq _sent_num __sent_num)) _sent_num)
  (:num_sats
   (&optional __num_sats)
   (if __num_sats (setq _num_sats __num_sats)) _num_sats)
  (:sat_id
   (&optional __sat_id)
   (if __sat_id (setq _sat_id __sat_id)) _sat_id)
  (:elev
   (&optional __elev)
   (if __elev (setq _elev __elev)) _elev)
  (:azim
   (&optional __azim)
   (if __azim (setq _azim __azim)) _azim)
  (:cno
   (&optional __cno)
   (if __cno (setq _cno __cno)) _cno)
  (:signal_id
   (&optional __signal_id)
   (if __signal_id (setq _signal_id __signal_id)) _signal_id)
  (:serialization-length
   ()
   (+
    ;; int16 _sentences
    2
    ;; int16 _sent_num
    2
    ;; int32 _num_sats
    4
    ;; int16[] _sat_id
    (* 2    (length _sat_id)) 4
    ;; int16[] _elev
    (* 2    (length _elev)) 4
    ;; int16[] _azim
    (* 2    (length _azim)) 4
    ;; int16[] _cno
    (* 2    (length _cno)) 4
    ;; string _signal_id
    4 (length _signal_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _sentences
       (write-word _sentences s)
     ;; int16 _sent_num
       (write-word _sent_num s)
     ;; int32 _num_sats
       (write-long _num_sats s)
     ;; int16[] _sat_id
     (write-long (length _sat_id) s)
     (dotimes (i (length _sat_id))
       (write-word (elt _sat_id i) s)
       )
     ;; int16[] _elev
     (write-long (length _elev) s)
     (dotimes (i (length _elev))
       (write-word (elt _elev i) s)
       )
     ;; int16[] _azim
     (write-long (length _azim) s)
     (dotimes (i (length _azim))
       (write-word (elt _azim i) s)
       )
     ;; int16[] _cno
     (write-long (length _cno) s)
     (dotimes (i (length _cno))
       (write-word (elt _cno i) s)
       )
     ;; string _signal_id
       (write-long (length _signal_id) s) (princ _signal_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _sentences
     (setq _sentences (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _sent_num
     (setq _sent_num (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _num_sats
     (setq _num_sats (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int16[] _sat_id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sat_id (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _sat_id i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16[] _elev
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _elev (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _elev i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16[] _azim
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _azim (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _azim i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16[] _cno
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cno (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _cno i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; string _signal_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _signal_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get fixposition_driver_ros1::gxgsv :md5sum-) "6c19e5f5ab3c6892027710db5940fb01")
(setf (get fixposition_driver_ros1::gxgsv :datatype-) "fixposition_driver_ros1/gxgsv")
(setf (get fixposition_driver_ros1::gxgsv :definition-)
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
# Fixposition NMEA-GX-GSV Message
#
#
####################################################################################################

# Format | Field     | Unit    | Description
# -------|-----------|---------|-------------------------------------|
int16      sentences # [-]     | Total number of sentences (1 to 9).
int16      sent_num  # [-]     | Sentence number (1 to 9).
int32      num_sats  # [-]     | Total number of satellites in view.
int16[]    sat_id    # [-]     | Satellite ID number.               
int16[]    elev      # [deg]   | Satellite elevation. 
int16[]    azim      # [deg]   | Satellite azimuth from true North.
int16[]    cno       # [db-Hz] | Satellite SNR (C/No).
string     signal_id # [Hex]   | Signal ID (see below).

# Signal ID table
#
# | ID | Signal                        |
# |----|-------------------------------|
# |  0 | No signal (any talker ID)     |
# |  1 | GPS/SBAS L1C/A (talker ID GP) |
# |  6 | GPS L2C-L (talker ID GP)      |
# |  7 | Galileo L1-BC (talker ID GA)  |
# |  2 | Galileo E5b (talker ID GA)    |
# |  1 | BeiDou B1I (talker ID GB)     |
# |  B | BeiDou B2I (talker ID GB)     |
# |  1 | GLONASS G1 C/A (talker ID GL) |
# |  3 | GLONASS G2 C/A (talker ID GL) |
")



(provide :fixposition_driver_ros1/gxgsv "6c19e5f5ab3c6892027710db5940fb01")


