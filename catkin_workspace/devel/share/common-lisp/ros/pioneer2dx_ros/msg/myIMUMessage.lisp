; Auto-generated. Do not edit!


(cl:in-package pioneer2dx_ros-msg)


;//! \htmlinclude myIMUMessage.msg.html

(cl:defclass <myIMUMessage> (roslisp-msg-protocol:ros-message)
  ((entity_name
    :reader entity_name
    :initarg :entity_name
    :type cl:string
    :initform "")
   (sec
    :reader sec
    :initarg :sec
    :type cl:float
    :initform 0.0)
   (nsec
    :reader nsec
    :initarg :nsec
    :type cl:float
    :initform 0.0)
   (orientation
    :reader orientation
    :initarg :orientation
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion))
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (linear_acceleration
    :reader linear_acceleration
    :initarg :linear_acceleration
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass myIMUMessage (<myIMUMessage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <myIMUMessage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'myIMUMessage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pioneer2dx_ros-msg:<myIMUMessage> is deprecated: use pioneer2dx_ros-msg:myIMUMessage instead.")))

(cl:ensure-generic-function 'entity_name-val :lambda-list '(m))
(cl:defmethod entity_name-val ((m <myIMUMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pioneer2dx_ros-msg:entity_name-val is deprecated.  Use pioneer2dx_ros-msg:entity_name instead.")
  (entity_name m))

(cl:ensure-generic-function 'sec-val :lambda-list '(m))
(cl:defmethod sec-val ((m <myIMUMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pioneer2dx_ros-msg:sec-val is deprecated.  Use pioneer2dx_ros-msg:sec instead.")
  (sec m))

(cl:ensure-generic-function 'nsec-val :lambda-list '(m))
(cl:defmethod nsec-val ((m <myIMUMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pioneer2dx_ros-msg:nsec-val is deprecated.  Use pioneer2dx_ros-msg:nsec instead.")
  (nsec m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <myIMUMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pioneer2dx_ros-msg:orientation-val is deprecated.  Use pioneer2dx_ros-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <myIMUMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pioneer2dx_ros-msg:angular_velocity-val is deprecated.  Use pioneer2dx_ros-msg:angular_velocity instead.")
  (angular_velocity m))

(cl:ensure-generic-function 'linear_acceleration-val :lambda-list '(m))
(cl:defmethod linear_acceleration-val ((m <myIMUMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pioneer2dx_ros-msg:linear_acceleration-val is deprecated.  Use pioneer2dx_ros-msg:linear_acceleration instead.")
  (linear_acceleration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <myIMUMessage>) ostream)
  "Serializes a message object of type '<myIMUMessage>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'entity_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'entity_name))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'sec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'nsec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear_acceleration) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <myIMUMessage>) istream)
  "Deserializes a message object of type '<myIMUMessage>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'entity_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'entity_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sec) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'nsec) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear_acceleration) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<myIMUMessage>)))
  "Returns string type for a message object of type '<myIMUMessage>"
  "pioneer2dx_ros/myIMUMessage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'myIMUMessage)))
  "Returns string type for a message object of type 'myIMUMessage"
  "pioneer2dx_ros/myIMUMessage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<myIMUMessage>)))
  "Returns md5sum for a message object of type '<myIMUMessage>"
  "03337626308ac1d60c46fa084c8af8ef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'myIMUMessage)))
  "Returns md5sum for a message object of type 'myIMUMessage"
  "03337626308ac1d60c46fa084c8af8ef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<myIMUMessage>)))
  "Returns full string definition for message of type '<myIMUMessage>"
  (cl:format cl:nil "string entity_name~%float64 sec~%float64 nsec~%geometry_msgs/Quaternion orientation~%geometry_msgs/Vector3 angular_velocity~%geometry_msgs/Vector3 linear_acceleration~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'myIMUMessage)))
  "Returns full string definition for message of type 'myIMUMessage"
  (cl:format cl:nil "string entity_name~%float64 sec~%float64 nsec~%geometry_msgs/Quaternion orientation~%geometry_msgs/Vector3 angular_velocity~%geometry_msgs/Vector3 linear_acceleration~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <myIMUMessage>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'entity_name))
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear_acceleration))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <myIMUMessage>))
  "Converts a ROS message object to a list"
  (cl:list 'myIMUMessage
    (cl:cons ':entity_name (entity_name msg))
    (cl:cons ':sec (sec msg))
    (cl:cons ':nsec (nsec msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
    (cl:cons ':linear_acceleration (linear_acceleration msg))
))
