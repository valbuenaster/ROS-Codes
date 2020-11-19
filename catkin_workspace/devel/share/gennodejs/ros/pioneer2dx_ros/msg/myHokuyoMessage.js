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

class myHokuyoMessage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.NRays = null;
      this.angleRes = null;
      this.angMax = null;
      this.angMin = null;
      this.ranges = null;
    }
    else {
      if (initObj.hasOwnProperty('NRays')) {
        this.NRays = initObj.NRays
      }
      else {
        this.NRays = 0;
      }
      if (initObj.hasOwnProperty('angleRes')) {
        this.angleRes = initObj.angleRes
      }
      else {
        this.angleRes = 0.0;
      }
      if (initObj.hasOwnProperty('angMax')) {
        this.angMax = initObj.angMax
      }
      else {
        this.angMax = 0.0;
      }
      if (initObj.hasOwnProperty('angMin')) {
        this.angMin = initObj.angMin
      }
      else {
        this.angMin = 0.0;
      }
      if (initObj.hasOwnProperty('ranges')) {
        this.ranges = initObj.ranges
      }
      else {
        this.ranges = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type myHokuyoMessage
    // Serialize message field [NRays]
    bufferOffset = _serializer.int16(obj.NRays, buffer, bufferOffset);
    // Serialize message field [angleRes]
    bufferOffset = _serializer.float64(obj.angleRes, buffer, bufferOffset);
    // Serialize message field [angMax]
    bufferOffset = _serializer.float64(obj.angMax, buffer, bufferOffset);
    // Serialize message field [angMin]
    bufferOffset = _serializer.float64(obj.angMin, buffer, bufferOffset);
    // Serialize message field [ranges]
    bufferOffset = _arraySerializer.float64(obj.ranges, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type myHokuyoMessage
    let len;
    let data = new myHokuyoMessage(null);
    // Deserialize message field [NRays]
    data.NRays = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [angleRes]
    data.angleRes = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angMax]
    data.angMax = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angMin]
    data.angMin = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ranges]
    data.ranges = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.ranges.length;
    return length + 30;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pioneer2dx_ros/myHokuyoMessage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '504180b862ce8f5f0f4d7dac12b5a1d2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 NRays
    float64 angleRes
    float64 angMax
    float64 angMin
    float64[] ranges
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new myHokuyoMessage(null);
    if (msg.NRays !== undefined) {
      resolved.NRays = msg.NRays;
    }
    else {
      resolved.NRays = 0
    }

    if (msg.angleRes !== undefined) {
      resolved.angleRes = msg.angleRes;
    }
    else {
      resolved.angleRes = 0.0
    }

    if (msg.angMax !== undefined) {
      resolved.angMax = msg.angMax;
    }
    else {
      resolved.angMax = 0.0
    }

    if (msg.angMin !== undefined) {
      resolved.angMin = msg.angMin;
    }
    else {
      resolved.angMin = 0.0
    }

    if (msg.ranges !== undefined) {
      resolved.ranges = msg.ranges;
    }
    else {
      resolved.ranges = []
    }

    return resolved;
    }
};

module.exports = myHokuyoMessage;
