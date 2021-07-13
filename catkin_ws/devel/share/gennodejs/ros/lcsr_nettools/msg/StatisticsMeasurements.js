// Auto-generated. Do not edit!

// (in-package lcsr_nettools.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class StatisticsMeasurements {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.avg = null;
      this.std = null;
      this.min = null;
      this.max = null;
    }
    else {
      if (initObj.hasOwnProperty('avg')) {
        this.avg = initObj.avg
      }
      else {
        this.avg = 0.0;
      }
      if (initObj.hasOwnProperty('std')) {
        this.std = initObj.std
      }
      else {
        this.std = 0.0;
      }
      if (initObj.hasOwnProperty('min')) {
        this.min = initObj.min
      }
      else {
        this.min = 0.0;
      }
      if (initObj.hasOwnProperty('max')) {
        this.max = initObj.max
      }
      else {
        this.max = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StatisticsMeasurements
    // Serialize message field [avg]
    bufferOffset = _serializer.float64(obj.avg, buffer, bufferOffset);
    // Serialize message field [std]
    bufferOffset = _serializer.float64(obj.std, buffer, bufferOffset);
    // Serialize message field [min]
    bufferOffset = _serializer.float64(obj.min, buffer, bufferOffset);
    // Serialize message field [max]
    bufferOffset = _serializer.float64(obj.max, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StatisticsMeasurements
    let len;
    let data = new StatisticsMeasurements(null);
    // Deserialize message field [avg]
    data.avg = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [std]
    data.std = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [min]
    data.min = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [max]
    data.max = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lcsr_nettools/StatisticsMeasurements';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a4354a53d5e13d816ed73d7269ee2cb2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 avg
    float64 std
    float64 min
    float64 max
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StatisticsMeasurements(null);
    if (msg.avg !== undefined) {
      resolved.avg = msg.avg;
    }
    else {
      resolved.avg = 0.0
    }

    if (msg.std !== undefined) {
      resolved.std = msg.std;
    }
    else {
      resolved.std = 0.0
    }

    if (msg.min !== undefined) {
      resolved.min = msg.min;
    }
    else {
      resolved.min = 0.0
    }

    if (msg.max !== undefined) {
      resolved.max = msg.max;
    }
    else {
      resolved.max = 0.0
    }

    return resolved;
    }
};

module.exports = StatisticsMeasurements;
