;; Auto-generated. Do not edit!


(when (boundp 'fixposition_driver_ros1::gphdt)
  (if (not (find-package "FIXPOSITION_DRIVER_ROS1"))
    (make-package "FIXPOSITION_DRIVER_ROS1"))
  (shadow 'gphdt (find-package "FIXPOSITION_DRIVER_ROS1")))
(unless (find-package "FIXPOSITION_DRIVER_ROS1::GPHDT")
  (make-package "FIXPOSITION_DRIVER_ROS1::GPHDT"))

(in-package "ROS")
;;//! \htmlinclude gphdt.msg.html


(defclass fixposition_driver_ros1::gphdt
  :super ros::object
  :slots (_heading _true_ind ))

(defmethod fixposition_driver_ros1::gphdt
  (:init
   (&key
    ((:heading __heading) 0.0)
    ((:true_ind __true_ind) 0)
    )
   (send-super :init)
   (setq _heading (float __heading))
   (setq _true_ind (round __true_ind))
   self)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:true_ind
   (&optional __true_ind)
   (if __true_ind (setq _true_ind __true_ind)) _true_ind)
  (:serialization-length
   ()
   (+
    ;; float64 _heading
    8
    ;; char _true_ind
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; char _true_ind
       (write-byte _true_ind s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; char _true_ind
     (setq _true_ind (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get fixposition_driver_ros1::gphdt :md5sum-) "f570455b15548c6d0b34662ea781cd6c")
(setf (get fixposition_driver_ros1::gphdt :datatype-) "fixposition_driver_ros1/gphdt")
(setf (get fixposition_driver_ros1::gphdt :definition-)
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
# Fixposition NMEA-GP-HDT Message
#
#
####################################################################################################

# Format | Field    | Unit  | Description
# -------|----------|-------|---------------|
float64    heading  # [deg] | True heading.
char       true_ind # [-]   | Always T.
")



(provide :fixposition_driver_ros1/gphdt "f570455b15548c6d0b34662ea781cd6c")


