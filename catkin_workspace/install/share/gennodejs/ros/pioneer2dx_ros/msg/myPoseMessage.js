// Auto-generated. Do not edit!

// (in-package pioneer2dx_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class myPoseMessage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.modelName = null;
      this.modelPosition = null;
      this.modelOrientation = null;
    }
    else {
      if (initObj.hasOwnProperty('modelName')) {
        this.modelName = initObj.modelName
      }
      else {
        this.modelName = '';
      }
      if (initObj.hasOwnProperty('modelPosition')) {
        this.modelPosition = initObj.modelPosition
      }
      else {
        this.modelPosition = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('modelOrientation')) {
        this.modelOrientation = initObj.modelOrientation
      }
      else {
        this.modelOrientation = new geometry_msgs.msg.Quaternion();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type myPoseMessage
    // Serialize message field [modelName]
    bufferOffset = _serializer.string(obj.modelName, buffer, bufferOffset);
    // Serialize message field [modelPosition]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.modelPosition, buffer, bufferOffset);
    // Serialize message field [modelOrientation]
    bufferOffset = geometry_msgs.msg.Quaternion.serialize(obj.modelOrientation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type myPoseMessage
    let len;
    let data = new myPoseMessage(null);
    // Deserialize message field [modelName]
    data.modelName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [modelPosition]
    data.modelPosition = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [modelOrientation]
    data.modelOrientation = geometry_msgs.msg.Quaternion.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.modelName.length;
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pioneer2dx_ros/myPoseMessage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '65d7d8bec13b357d15269095ed5552b9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string modelName
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new myPoseMessage(null);
    if (msg.modelName !== undefined) {
      resolved.modelName = msg.modelName;
    }
    else {
      resolved.modelName = ''
    }

    if (msg.modelPosition !== undefined) {
      resolved.modelPosition = geometry_msgs.msg.Vector3.Resolve(msg.modelPosition)
    }
    else {
      resolved.modelPosition = new geometry_msgs.msg.Vector3()
    }

    if (msg.modelOrientation !== undefined) {
      resolved.modelOrientation = geometry_msgs.msg.Quaternion.Resolve(msg.modelOrientation)
    }
    else {
      resolved.modelOrientation = new geometry_msgs.msg.Quaternion()
    }

    return resolved;
    }
};

module.exports = myPoseMessage;
