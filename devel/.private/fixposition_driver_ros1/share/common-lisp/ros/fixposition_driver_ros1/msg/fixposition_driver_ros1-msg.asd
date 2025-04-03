
(cl:in-package :asdf)

(defsystem "fixposition_driver_ros1-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "GnssSats" :depends-on ("_package_GnssSats"))
    (:file "_package_GnssSats" :depends-on ("_package"))
    (:file "NMEA" :depends-on ("_package_NMEA"))
    (:file "_package_NMEA" :depends-on ("_package"))
    (:file "Speed" :depends-on ("_package_Speed"))
    (:file "_package_Speed" :depends-on ("_package"))
    (:file "WheelSensor" :depends-on ("_package_WheelSensor"))
    (:file "_package_WheelSensor" :depends-on ("_package"))
  ))