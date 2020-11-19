;; Auto-generated. Do not edit!


(when (boundp 'pioneer2dx_ros::myPoseMessage)
  (if (not (find-package "PIONEER2DX_ROS"))
    (make-package "PIONEER2DX_ROS"))
  (shadow 'myPoseMessage (find-package "PIONEER2DX_ROS")))
(unless (find-package "PIONEER2DX_ROS::MYPOSEMESSAGE")
  (make-package "PIONEER2DX_ROS::MYPOSEMESSAGE"))

(in-package "ROS")
;;//! \htmlinclude myPoseMessage.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass pioneer2dx_ros::myPoseMessage
  :super ros::object
  :slots (_modelName _modelPosition _modelOrientation ))

(defmethod pioneer2dx_ros::myPoseMessage
  (:init
   (&key
    ((:modelName __modelName) "")
    ((:modelPosition __modelPosition) (instance geometry_msgs::Vector3 :init))
    ((:modelOrientation __modelOrientation) (instance geometry_msgs::Quaternion :init))
    )
   (send-super :init)
   (setq _modelName (string __modelName))
   (setq _modelPosition __modelPosition)
   (setq _modelOrientation __modelOrientation)
   self)
  (:modelName
   (&optional __modelName)
   (if __modelName (setq _modelName __modelName)) _modelName)
  (:modelPosition
   (&rest __modelPosition)
   (if (keywordp (car __modelPosition))
       (send* _modelPosition __modelPosition)
     (progn
       (if __modelPosition (setq _modelPosition (car __modelPosition)))
       _modelPosition)))
  (:modelOrientation
   (&rest __modelOrientation)
   (if (keywordp (car __modelOrientation))
       (send* _modelOrientation __modelOrientation)
     (progn
       (if __modelOrientation (setq _modelOrientation (car __modelOrientation)))
       _modelOrientation)))
  (:serialization-length
   ()
   (+
    ;; string _modelName
    4 (length _modelName)
    ;; geometry_msgs/Vector3 _modelPosition
    (send _modelPosition :serialization-length)
    ;; geometry_msgs/Quaternion _modelOrientation
    (send _modelOrientation :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _modelName
       (write-long (length _modelName) s) (princ _modelName s)
     ;; geometry_msgs/Vector3 _modelPosition
       (send _modelPosition :serialize s)
     ;; geometry_msgs/Quaternion _modelOrientation
       (send _modelOrientation :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _modelName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _modelName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Vector3 _modelPosition
     (send _modelPosition :deserialize buf ptr-) (incf ptr- (send _modelPosition :serialization-length))
   ;; geometry_msgs/Quaternion _modelOrientation
     (send _modelOrientation :deserialize buf ptr-) (incf ptr- (send _modelOrientation :serialization-length))
   ;;
   self)
  )

(setf (get pioneer2dx_ros::myPoseMessage :md5sum-) "65d7d8bec13b357d15269095ed5552b9")
(setf (get pioneer2dx_ros::myPoseMessage :datatype-) "pioneer2dx_ros/myPoseMessage")
(setf (get pioneer2dx_ros::myPoseMessage :definition-)
      "string modelName
geometry_msgs/Vector3 modelPosition
geometry_msgs/Quaternion modelOrientation


================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :pioneer2dx_ros/myPoseMessage "65d7d8bec13b357d15269095ed5552b9")


