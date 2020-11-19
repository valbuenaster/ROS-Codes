;; Auto-generated. Do not edit!


(when (boundp 'pioneer2dx_ros::myGPSMessage)
  (if (not (find-package "PIONEER2DX_ROS"))
    (make-package "PIONEER2DX_ROS"))
  (shadow 'myGPSMessage (find-package "PIONEER2DX_ROS")))
(unless (find-package "PIONEER2DX_ROS::MYGPSMESSAGE")
  (make-package "PIONEER2DX_ROS::MYGPSMESSAGE"))

(in-package "ROS")
;;//! \htmlinclude myGPSMessage.msg.html


(defclass pioneer2dx_ros::myGPSMessage
  :super ros::object
  :slots (_gpsOwner _sec _nsec _latitude_deg _longitude_deg _altitude _velocity_east _velocity_north _velocity_up ))

(defmethod pioneer2dx_ros::myGPSMessage
  (:init
   (&key
    ((:gpsOwner __gpsOwner) "")
    ((:sec __sec) 0.0)
    ((:nsec __nsec) 0.0)
    ((:latitude_deg __latitude_deg) 0.0)
    ((:longitude_deg __longitude_deg) 0.0)
    ((:altitude __altitude) 0.0)
    ((:velocity_east __velocity_east) 0.0)
    ((:velocity_north __velocity_north) 0.0)
    ((:velocity_up __velocity_up) 0.0)
    )
   (send-super :init)
   (setq _gpsOwner (string __gpsOwner))
   (setq _sec (float __sec))
   (setq _nsec (float __nsec))
   (setq _latitude_deg (float __latitude_deg))
   (setq _longitude_deg (float __longitude_deg))
   (setq _altitude (float __altitude))
   (setq _velocity_east (float __velocity_east))
   (setq _velocity_north (float __velocity_north))
   (setq _velocity_up (float __velocity_up))
   self)
  (:gpsOwner
   (&optional __gpsOwner)
   (if __gpsOwner (setq _gpsOwner __gpsOwner)) _gpsOwner)
  (:sec
   (&optional __sec)
   (if __sec (setq _sec __sec)) _sec)
  (:nsec
   (&optional __nsec)
   (if __nsec (setq _nsec __nsec)) _nsec)
  (:latitude_deg
   (&optional __latitude_deg)
   (if __latitude_deg (setq _latitude_deg __latitude_deg)) _latitude_deg)
  (:longitude_deg
   (&optional __longitude_deg)
   (if __longitude_deg (setq _longitude_deg __longitude_deg)) _longitude_deg)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:velocity_east
   (&optional __velocity_east)
   (if __velocity_east (setq _velocity_east __velocity_east)) _velocity_east)
  (:velocity_north
   (&optional __velocity_north)
   (if __velocity_north (setq _velocity_north __velocity_north)) _velocity_north)
  (:velocity_up
   (&optional __velocity_up)
   (if __velocity_up (setq _velocity_up __velocity_up)) _velocity_up)
  (:serialization-length
   ()
   (+
    ;; string _gpsOwner
    4 (length _gpsOwner)
    ;; float64 _sec
    8
    ;; float64 _nsec
    8
    ;; float64 _latitude_deg
    8
    ;; float64 _longitude_deg
    8
    ;; float64 _altitude
    8
    ;; float64 _velocity_east
    8
    ;; float64 _velocity_north
    8
    ;; float64 _velocity_up
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _gpsOwner
       (write-long (length _gpsOwner) s) (princ _gpsOwner s)
     ;; float64 _sec
       (sys::poke _sec (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _nsec
       (sys::poke _nsec (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _latitude_deg
       (sys::poke _latitude_deg (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude_deg
       (sys::poke _longitude_deg (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _velocity_east
       (sys::poke _velocity_east (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _velocity_north
       (sys::poke _velocity_north (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _velocity_up
       (sys::poke _velocity_up (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _gpsOwner
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gpsOwner (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _sec
     (setq _sec (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _nsec
     (setq _nsec (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _latitude_deg
     (setq _latitude_deg (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude_deg
     (setq _longitude_deg (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _velocity_east
     (setq _velocity_east (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _velocity_north
     (setq _velocity_north (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _velocity_up
     (setq _velocity_up (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get pioneer2dx_ros::myGPSMessage :md5sum-) "6cb97d1e605900e785858ea58cd96c67")
(setf (get pioneer2dx_ros::myGPSMessage :datatype-) "pioneer2dx_ros/myGPSMessage")
(setf (get pioneer2dx_ros::myGPSMessage :definition-)
      "string gpsOwner  
float64 sec
float64 nsec
float64 latitude_deg
float64 longitude_deg
float64 altitude
float64 velocity_east
float64 velocity_north
float64 velocity_up

")



(provide :pioneer2dx_ros/myGPSMessage "6cb97d1e605900e785858ea58cd96c67")


