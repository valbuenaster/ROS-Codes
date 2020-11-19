
(cl:in-package :asdf)

(defsystem "pioneer2dx_ros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "myGPSMessage" :depends-on ("_package_myGPSMessage"))
    (:file "_package_myGPSMessage" :depends-on ("_package"))
    (:file "myHokuyoMessage" :depends-on ("_package_myHokuyoMessage"))
    (:file "_package_myHokuyoMessage" :depends-on ("_package"))
    (:file "myIMUMessage" :depends-on ("_package_myIMUMessage"))
    (:file "_package_myIMUMessage" :depends-on ("_package"))
    (:file "myPoseMessage" :depends-on ("_package_myPoseMessage"))
    (:file "_package_myPoseMessage" :depends-on ("_package"))
  ))