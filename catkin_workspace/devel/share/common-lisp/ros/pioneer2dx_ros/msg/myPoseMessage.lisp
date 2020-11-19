; Auto-generated. Do not edit!


(cl:in-package pioneer2dx_ros-msg)


;//! \htmlinclude myPoseMessage.msg.html

(cl:defclass <myPoseMessage> (roslisp-msg-protocol:ros-message)
  ((modelName
    :reader modelName
    :initarg :modelName
    :type cl:string
    :initform "")
   (modelPosition
    :reader modelPosition
    :initarg :modelPosition
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (modelOrientation
    :reader modelOrientation
    :initarg :modelOrientation
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion)))
)

(cl:defclass myPoseMessage (<myPoseMessage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <myPoseMessage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'myPoseMessage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pioneer2dx_ros-msg:<myPoseMessage> is deprecated: use pioneer2dx_ros-msg:myPoseMessage instead.")))

(cl:ensure-generic-function 'modelName-val :lambda-list '(m))
(cl:defmethod modelName-val ((m <myPoseMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pioneer2dx_ros-msg:modelName-val is deprecated.  Use pioneer2dx_ros-msg:modelName instead.")
  (modelName m))

(cl:ensure-generic-function 'modelPosition-val :lambda-list '(m))
(cl:defmethod modelPosition-val ((m <myPoseMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pioneer2dx_ros-msg:modelPosition-val is deprecated.  Use pioneer2dx_ros-msg:modelPosition instead.")
  (modelPosition m))

(cl:ensure-generic-function 'modelOrientation-val :lambda-list '(m))
(cl:defmethod modelOrientation-val ((m <myPoseMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pioneer2dx_ros-msg:modelOrientation-val is deprecated.  Use pioneer2dx_ros-msg:modelOrientation instead.")
  (modelOrientation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <myPoseMessage>) ostream)
  "Serializes a message object of type '<myPoseMessage>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'modelName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'modelName))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'modelPosition) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'modelOrientation) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <myPoseMessage>) istream)
  "Deserializes a message object of type '<myPoseMessage>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'modelName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'modelName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'modelPosition) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'modelOrientation) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<myPoseMessage>)))
  "Returns string type for a message object of type '<myPoseMessage>"
  "pioneer2dx_ros/myPoseMessage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'myPoseMessage)))
  "Returns string type for a message object of type 'myPoseMessage"
  "pioneer2dx_ros/myPoseMessage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<myPoseMessage>)))
  "Returns md5sum for a message object of type '<myPoseMessage>"
  "65d7d8bec13b357d15269095ed5552b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'myPoseMessage)))
  "Returns md5sum for a message object of type 'myPoseMessage"
  "65d7d8bec13b357d15269095ed5552b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<myPoseMessage>)))
  "Returns full string definition for message of type '<myPoseMessage>"
  (cl:format cl:nil "string modelName~%geometry_msgs/Vector3 modelPosition~%geometry_msgs/Quaternion modelOrientation~%~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'myPoseMessage)))
  "Returns full string definition for message of type 'myPoseMessage"
  (cl:format cl:nil "string modelName~%geometry_msgs/Vector3 modelPosition~%geometry_msgs/Quaternion modelOrientation~%~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <myPoseMessage>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'modelName))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'modelPosition))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'modelOrientation))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <myPoseMessage>))
  "Converts a ROS message object to a list"
  (cl:list 'myPoseMessage
    (cl:cons ':modelName (modelName msg))
    (cl:cons ':modelPosition (modelPosition msg))
    (cl:cons ':modelOrientation (modelOrientation msg))
))
