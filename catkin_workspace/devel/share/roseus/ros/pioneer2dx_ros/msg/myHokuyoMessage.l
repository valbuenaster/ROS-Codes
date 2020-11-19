;; Auto-generated. Do not edit!


(when (boundp 'pioneer2dx_ros::myHokuyoMessage)
  (if (not (find-package "PIONEER2DX_ROS"))
    (make-package "PIONEER2DX_ROS"))
  (shadow 'myHokuyoMessage (find-package "PIONEER2DX_ROS")))
(unless (find-package "PIONEER2DX_ROS::MYHOKUYOMESSAGE")
  (make-package "PIONEER2DX_ROS::MYHOKUYOMESSAGE"))

(in-package "ROS")
;;//! \htmlinclude myHokuyoMessage.msg.html


(defclass pioneer2dx_ros::myHokuyoMessage
  :super ros::object
  :slots (_NRays _angleRes _angMax _angMin _ranges ))

(defmethod pioneer2dx_ros::myHokuyoMessage
  (:init
   (&key
    ((:NRays __NRays) 0)
    ((:angleRes __angleRes) 0.0)
    ((:angMax __angMax) 0.0)
    ((:angMin __angMin) 0.0)
    ((:ranges __ranges) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _NRays (round __NRays))
   (setq _angleRes (float __angleRes))
   (setq _angMax (float __angMax))
   (setq _angMin (float __angMin))
   (setq _ranges __ranges)
   self)
  (:NRays
   (&optional __NRays)
   (if __NRays (setq _NRays __NRays)) _NRays)
  (:angleRes
   (&optional __angleRes)
   (if __angleRes (setq _angleRes __angleRes)) _angleRes)
  (:angMax
   (&optional __angMax)
   (if __angMax (setq _angMax __angMax)) _angMax)
  (:angMin
   (&optional __angMin)
   (if __angMin (setq _angMin __angMin)) _angMin)
  (:ranges
   (&optional __ranges)
   (if __ranges (setq _ranges __ranges)) _ranges)
  (:serialization-length
   ()
   (+
    ;; int16 _NRays
    2
    ;; float64 _angleRes
    8
    ;; float64 _angMax
    8
    ;; float64 _angMin
    8
    ;; float64[] _ranges
    (* 8    (length _ranges)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _NRays
       (write-word _NRays s)
     ;; float64 _angleRes
       (sys::poke _angleRes (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angMax
       (sys::poke _angMax (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angMin
       (sys::poke _angMin (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _ranges
     (write-long (length _ranges) s)
     (dotimes (i (length _ranges))
       (sys::poke (elt _ranges i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _NRays
     (setq _NRays (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _angleRes
     (setq _angleRes (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angMax
     (setq _angMax (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angMin
     (setq _angMin (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _ranges
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ranges (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ranges i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get pioneer2dx_ros::myHokuyoMessage :md5sum-) "504180b862ce8f5f0f4d7dac12b5a1d2")
(setf (get pioneer2dx_ros::myHokuyoMessage :datatype-) "pioneer2dx_ros/myHokuyoMessage")
(setf (get pioneer2dx_ros::myHokuyoMessage :definition-)
      "int16 NRays
float64 angleRes
float64 angMax
float64 angMin
float64[] ranges

")



(provide :pioneer2dx_ros/myHokuyoMessage "504180b862ce8f5f0f4d7dac12b5a1d2")


