; Auto-generated. Do not edit!


(cl:in-package pioneer2dx_ros-msg)


;//! \htmlinclude myHokuyoMessage.msg.html

(cl:defclass <myHokuyoMessage> (roslisp-msg-protocol:ros-message)
  ((NRays
    :reader NRays
    :initarg :NRays
    :type cl:fixnum
    :initform 0)
   (angleRes
    :reader angleRes
    :initarg :angleRes
    :type cl:float
    :initform 0.0)
   (angMax
    :reader angMax
    :initarg :angMax
    :type cl:float
    :initform 0.0)
   (angMin
    :reader angMin
    :initarg :angMin
    :type cl:float
    :initform 0.0)
   (ranges
    :reader ranges
    :initarg :ranges
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass myHokuyoMessage (<myHokuyoMessage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <myHokuyoMessage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'myHokuyoMessage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pioneer2dx_ros-msg:<myHokuyoMessage> is deprecated: use pioneer2dx_ros-msg:myHokuyoMessage instead.")))

(cl:ensure-generic-function 'NRays-val :lambda-list '(m))
(cl:defmethod NRays-val ((m <myHokuyoMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pioneer2dx_ros-msg:NRays-val is deprecated.  Use pioneer2dx_ros-msg:NRays instead.")
  (NRays m))

(cl:ensure-generic-function 'angleRes-val :lambda-list '(m))
(cl:defmethod angleRes-val ((m <myHokuyoMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pioneer2dx_ros-msg:angleRes-val is deprecated.  Use pioneer2dx_ros-msg:angleRes instead.")
  (angleRes m))

(cl:ensure-generic-function 'angMax-val :lambda-list '(m))
(cl:defmethod angMax-val ((m <myHokuyoMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pioneer2dx_ros-msg:angMax-val is deprecated.  Use pioneer2dx_ros-msg:angMax instead.")
  (angMax m))

(cl:ensure-generic-function 'angMin-val :lambda-list '(m))
(cl:defmethod angMin-val ((m <myHokuyoMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pioneer2dx_ros-msg:angMin-val is deprecated.  Use pioneer2dx_ros-msg:angMin instead.")
  (angMin m))

(cl:ensure-generic-function 'ranges-val :lambda-list '(m))
(cl:defmethod ranges-val ((m <myHokuyoMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pioneer2dx_ros-msg:ranges-val is deprecated.  Use pioneer2dx_ros-msg:ranges instead.")
  (ranges m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <myHokuyoMessage>) ostream)
  "Serializes a message object of type '<myHokuyoMessage>"
  (cl:let* ((signed (cl:slot-value msg 'NRays)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angleRes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angMax))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angMin))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ranges))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'ranges))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <myHokuyoMessage>) istream)
  "Deserializes a message object of type '<myHokuyoMessage>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'NRays) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angleRes) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angMax) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angMin) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ranges) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ranges)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<myHokuyoMessage>)))
  "Returns string type for a message object of type '<myHokuyoMessage>"
  "pioneer2dx_ros/myHokuyoMessage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'myHokuyoMessage)))
  "Returns string type for a message object of type 'myHokuyoMessage"
  "pioneer2dx_ros/myHokuyoMessage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<myHokuyoMessage>)))
  "Returns md5sum for a message object of type '<myHokuyoMessage>"
  "504180b862ce8f5f0f4d7dac12b5a1d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'myHokuyoMessage)))
  "Returns md5sum for a message object of type 'myHokuyoMessage"
  "504180b862ce8f5f0f4d7dac12b5a1d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<myHokuyoMessage>)))
  "Returns full string definition for message of type '<myHokuyoMessage>"
  (cl:format cl:nil "int16 NRays~%float64 angleRes~%float64 angMax~%float64 angMin~%float64[] ranges~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'myHokuyoMessage)))
  "Returns full string definition for message of type 'myHokuyoMessage"
  (cl:format cl:nil "int16 NRays~%float64 angleRes~%float64 angMax~%float64 angMin~%float64[] ranges~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <myHokuyoMessage>))
  (cl:+ 0
     2
     8
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ranges) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <myHokuyoMessage>))
  "Converts a ROS message object to a list"
  (cl:list 'myHokuyoMessage
    (cl:cons ':NRays (NRays msg))
    (cl:cons ':angleRes (angleRes msg))
    (cl:cons ':angMax (angMax msg))
    (cl:cons ':angMin (angMin msg))
    (cl:cons ':ranges (ranges msg))
))
