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

class myIMUMessage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.entity_name = null;
      this.sec = null;
      this.nsec = null;
      this.orientation = null;
      this.angular_velocity = null;
      this.linear_acceleration = null;
    }
    else {
      if (initObj.hasOwnProperty('entity_name')) {
        this.entity_name = initObj.entity_name
      }
      else {
        this.entity_name = '';
      }
      if (initObj.hasOwnProperty('sec')) {
        this.sec = initObj.sec
      }
      else {
        this.sec = 0.0;
      }
      if (initObj.hasOwnProperty('nsec')) {
        this.nsec = initObj.nsec
      }
      else {
        this.nsec = 0.0;
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = new geometry_msgs.msg.Quaternion();
      }
      if (initObj.hasOwnProperty('angular_velocity')) {
        this.angular_velocity = initObj.angular_velocity
      }
      else {
        this.angular_velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('linear_acceleration')) {
        this.linear_acceleration = initObj.linear_acceleration
      }
      else {
        this.linear_acceleration = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type myIMUMessage
    // Serialize message field [entity_name]
    bufferOffset = _serializer.string(obj.entity_name, buffer, bufferOffset);
    // Serialize message field [sec]
    bufferOffset = _serializer.float64(obj.sec, buffer, bufferOffset);
    // Serialize message field [nsec]
    bufferOffset = _serializer.float64(obj.nsec, buffer, bufferOffset);
    // Serialize message field [orientation]
    bufferOffset = geometry_msgs.msg.Quaternion.serialize(obj.orientation, buffer, bufferOffset);
    // Serialize message field [angular_velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.angular_velocity, buffer, bufferOffset);
    // Serialize message field [linear_acceleration]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.linear_acceleration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type myIMUMessage
    let len;
    let data = new myIMUMessage(null);
    // Deserialize message field [entity_name]
    data.entity_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sec]
    data.sec = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [nsec]
    data.nsec = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [orientation]
    data.orientation = geometry_msgs.msg.Quaternion.deserialize(buffer, bufferOffset);
    // Deserialize message field [angular_velocity]
    data.angular_velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [linear_acceleration]
    data.linear_acceleration = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.entity_name.length;
    return length + 100;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pioneer2dx_ros/myIMUMessage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '03337626308ac1d60c46fa084c8af8ef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string entity_name
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new myIMUMessage(null);
    if (msg.entity_name !== undefined) {
      resolved.entity_name = msg.entity_name;
    }
    else {
      resolved.entity_name = ''
    }

    if (msg.sec !== undefined) {
      resolved.sec = msg.sec;
    }
    else {
      resolved.sec = 0.0
    }

    if (msg.nsec !== undefined) {
      resolved.nsec = msg.nsec;
    }
    else {
      resolved.nsec = 0.0
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = geometry_msgs.msg.Quaternion.Resolve(msg.orientation)
    }
    else {
      resolved.orientation = new geometry_msgs.msg.Quaternion()
    }

    if (msg.angular_velocity !== undefined) {
      resolved.angular_velocity = geometry_msgs.msg.Vector3.Resolve(msg.angular_velocity)
    }
    else {
      resolved.angular_velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.linear_acceleration !== undefined) {
      resolved.linear_acceleration = geometry_msgs.msg.Vector3.Resolve(msg.linear_acceleration)
    }
    else {
      resolved.linear_acceleration = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = myIMUMessage;
