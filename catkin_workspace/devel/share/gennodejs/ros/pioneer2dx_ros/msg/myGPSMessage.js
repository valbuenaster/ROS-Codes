// Auto-generated. Do not edit!

// (in-package pioneer2dx_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class myGPSMessage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gpsOwner = null;
      this.sec = null;
      this.nsec = null;
      this.latitude_deg = null;
      this.longitude_deg = null;
      this.altitude = null;
      this.velocity_east = null;
      this.velocity_north = null;
      this.velocity_up = null;
    }
    else {
      if (initObj.hasOwnProperty('gpsOwner')) {
        this.gpsOwner = initObj.gpsOwner
      }
      else {
        this.gpsOwner = '';
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
      if (initObj.hasOwnProperty('latitude_deg')) {
        this.latitude_deg = initObj.latitude_deg
      }
      else {
        this.latitude_deg = 0.0;
      }
      if (initObj.hasOwnProperty('longitude_deg')) {
        this.longitude_deg = initObj.longitude_deg
      }
      else {
        this.longitude_deg = 0.0;
      }
      if (initObj.hasOwnProperty('altitude')) {
        this.altitude = initObj.altitude
      }
      else {
        this.altitude = 0.0;
      }
      if (initObj.hasOwnProperty('velocity_east')) {
        this.velocity_east = initObj.velocity_east
      }
      else {
        this.velocity_east = 0.0;
      }
      if (initObj.hasOwnProperty('velocity_north')) {
        this.velocity_north = initObj.velocity_north
      }
      else {
        this.velocity_north = 0.0;
      }
      if (initObj.hasOwnProperty('velocity_up')) {
        this.velocity_up = initObj.velocity_up
      }
      else {
        this.velocity_up = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type myGPSMessage
    // Serialize message field [gpsOwner]
    bufferOffset = _serializer.string(obj.gpsOwner, buffer, bufferOffset);
    // Serialize message field [sec]
    bufferOffset = _serializer.float64(obj.sec, buffer, bufferOffset);
    // Serialize message field [nsec]
    bufferOffset = _serializer.float64(obj.nsec, buffer, bufferOffset);
    // Serialize message field [latitude_deg]
    bufferOffset = _serializer.float64(obj.latitude_deg, buffer, bufferOffset);
    // Serialize message field [longitude_deg]
    bufferOffset = _serializer.float64(obj.longitude_deg, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = _serializer.float64(obj.altitude, buffer, bufferOffset);
    // Serialize message field [velocity_east]
    bufferOffset = _serializer.float64(obj.velocity_east, buffer, bufferOffset);
    // Serialize message field [velocity_north]
    bufferOffset = _serializer.float64(obj.velocity_north, buffer, bufferOffset);
    // Serialize message field [velocity_up]
    bufferOffset = _serializer.float64(obj.velocity_up, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type myGPSMessage
    let len;
    let data = new myGPSMessage(null);
    // Deserialize message field [gpsOwner]
    data.gpsOwner = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sec]
    data.sec = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [nsec]
    data.nsec = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [latitude_deg]
    data.latitude_deg = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [longitude_deg]
    data.longitude_deg = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [velocity_east]
    data.velocity_east = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [velocity_north]
    data.velocity_north = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [velocity_up]
    data.velocity_up = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.gpsOwner.length;
    return length + 68;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pioneer2dx_ros/myGPSMessage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6cb97d1e605900e785858ea58cd96c67';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string gpsOwner  
    float64 sec
    float64 nsec
    float64 latitude_deg
    float64 longitude_deg
    float64 altitude
    float64 velocity_east
    float64 velocity_north
    float64 velocity_up
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new myGPSMessage(null);
    if (msg.gpsOwner !== undefined) {
      resolved.gpsOwner = msg.gpsOwner;
    }
    else {
      resolved.gpsOwner = ''
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

    if (msg.latitude_deg !== undefined) {
      resolved.latitude_deg = msg.latitude_deg;
    }
    else {
      resolved.latitude_deg = 0.0
    }

    if (msg.longitude_deg !== undefined) {
      resolved.longitude_deg = msg.longitude_deg;
    }
    else {
      resolved.longitude_deg = 0.0
    }

    if (msg.altitude !== undefined) {
      resolved.altitude = msg.altitude;
    }
    else {
      resolved.altitude = 0.0
    }

    if (msg.velocity_east !== undefined) {
      resolved.velocity_east = msg.velocity_east;
    }
    else {
      resolved.velocity_east = 0.0
    }

    if (msg.velocity_north !== undefined) {
      resolved.velocity_north = msg.velocity_north;
    }
    else {
      resolved.velocity_north = 0.0
    }

    if (msg.velocity_up !== undefined) {
      resolved.velocity_up = msg.velocity_up;
    }
    else {
      resolved.velocity_up = 0.0
    }

    return resolved;
    }
};

module.exports = myGPSMessage;
