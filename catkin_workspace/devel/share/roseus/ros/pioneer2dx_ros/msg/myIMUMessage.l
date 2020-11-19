;; Auto-generated. Do not edit!


(when (boundp 'pioneer2dx_ros::myIMUMessage)
  (if (not (find-package "PIONEER2DX_ROS"))
    (make-package "PIONEER2DX_ROS"))
  (shadow 'myIMUMessage (find-package "PIONEER2DX_ROS")))
(unless (find-package "PIONEER2DX_ROS::MYIMUMESSAGE")
  (make-package "PIONEER2DX_ROS::MYIMUMESSAGE"))

(in-package "ROS")
;;//! \htmlinclude myIMUMessage.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass pioneer2dx_ros::myIMUMessage
  :super ros::object
  :slots (_entity_name _sec _nsec _orientation _angular_velocity _linear_acceleration ))

(defmethod pioneer2dx_ros::myIMUMessage
  (:init
   (&key
    ((:entity_name __entity_name) "")
    ((:sec __sec) 0.0)
    ((:nsec __nsec) 0.0)
    ((:orientation __orientation) (instance geometry_msgs::Quaternion :init))
    ((:angular_velocity __angular_velocity) (instance geometry_msgs::Vector3 :init))
    ((:linear_acceleration __linear_acceleration) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _entity_name (string __entity_name))
   (setq _sec (float __sec))
   (setq _nsec (float __nsec))
   (setq _orientation __orientation)
   (setq _angular_velocity __angular_velocity)
   (setq _linear_acceleration __linear_acceleration)
   self)
  (:entity_name
   (&optional __entity_name)
   (if __entity_name (setq _entity_name __entity_name)) _entity_name)
  (:sec
   (&optional __sec)
   (if __sec (setq _sec __sec)) _sec)
  (:nsec
   (&optional __nsec)
   (if __nsec (setq _nsec __nsec)) _nsec)
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:angular_velocity
   (&rest __angular_velocity)
   (if (keywordp (car __angular_velocity))
       (send* _angular_velocity __angular_velocity)
     (progn
       (if __angular_velocity (setq _angular_velocity (car __angular_velocity)))
       _angular_velocity)))
  (:linear_acceleration
   (&rest __linear_acceleration)
   (if (keywordp (car __linear_acceleration))
       (send* _linear_acceleration __linear_acceleration)
     (progn
       (if __linear_acceleration (setq _linear_acceleration (car __linear_acceleration)))
       _linear_acceleration)))
  (:serialization-length
   ()
   (+
    ;; string _entity_name
    4 (length _entity_name)
    ;; float64 _sec
    8
    ;; float64 _nsec
    8
    ;; geometry_msgs/Quaternion _orientation
    (send _orientation :serialization-length)
    ;; geometry_msgs/Vector3 _angular_velocity
    (send _angular_velocity :serialization-length)
    ;; geometry_msgs/Vector3 _linear_acceleration
    (send _linear_acceleration :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _entity_name
       (write-long (length _entity_name) s) (princ _entity_name s)
     ;; float64 _sec
       (sys::poke _sec (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _nsec
       (sys::poke _nsec (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Quaternion _orientation
       (send _orientation :serialize s)
     ;; geometry_msgs/Vector3 _angular_velocity
       (send _angular_velocity :serialize s)
     ;; geometry_msgs/Vector3 _linear_acceleration
       (send _linear_acceleration :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _entity_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _entity_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _sec
     (setq _sec (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _nsec
     (setq _nsec (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; geometry_msgs/Vector3 _angular_velocity
     (send _angular_velocity :deserialize buf ptr-) (incf ptr- (send _angular_velocity :serialization-length))
   ;; geometry_msgs/Vector3 _linear_acceleration
     (send _linear_acceleration :deserialize buf ptr-) (incf ptr- (send _linear_acceleration :serialization-length))
   ;;
   self)
  )

(setf (get pioneer2dx_ros::myIMUMessage :md5sum-) "03337626308ac1d60c46fa084c8af8ef")
(setf (get pioneer2dx_ros::myIMUMessage :datatype-) "pioneer2dx_ros/myIMUMessage")
(setf (get pioneer2dx_ros::myIMUMessage :definition-)
      "string entity_name
float64 sec
float64 nsec
geometry_msgs/Quaternion orientation
geometry_msgs/Vector3 angular_velocity
geometry_msgs/Vector3 linear_acceleration

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

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
")



(provide :pioneer2dx_ros/myIMUMessage "03337626308ac1d60c46fa084c8af8ef")


