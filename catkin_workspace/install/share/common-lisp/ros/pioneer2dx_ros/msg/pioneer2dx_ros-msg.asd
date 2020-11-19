
(cl:in-package :asdf)

(defsystem "pioneer2dx_ros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "myPoseMessage" :depends-on ("_package_myPoseMessage"))
    (:file "_package_myPoseMessage" :depends-on ("_package"))
  ))