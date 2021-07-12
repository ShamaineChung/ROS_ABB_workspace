// Auto-generated. Do not edit!

// (in-package lcsr_nettools.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let StatisticsMeasurements = require('./StatisticsMeasurements.js');

//-----------------------------------------------------------

class TopicMeasurements {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.msg_loss = null;
      this.first_recv_time = null;
      this.latest_recv_time = null;
      this.latency = null;
      this.frequency = null;
    }
    else {
      if (initObj.hasOwnProperty('msg_loss')) {
        this.msg_loss = initObj.msg_loss
      }
      else {
        this.msg_loss = 0.0;
      }
      if (initObj.hasOwnProperty('first_recv_time')) {
        this.first_recv_time = initObj.first_recv_time
      }
      else {
        this.first_recv_time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('latest_recv_time')) {
        this.latest_recv_time = initObj.latest_recv_time
      }
      else {
        this.latest_recv_time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('latency')) {
        this.latency = initObj.latency
      }
      else {
        this.latency = new StatisticsMeasurements();
      }
      if (initObj.hasOwnProperty('frequency')) {
        this.frequency = initObj.frequency
      }
      else {
        this.frequency = new StatisticsMeasurements();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TopicMeasurements
    // Serialize message field [msg_loss]
    bufferOffset = _serializer.float64(obj.msg_loss, buffer, bufferOffset);
    // Serialize message field [first_recv_time]
    bufferOffset = _serializer.time(obj.first_recv_time, buffer, bufferOffset);
    // Serialize message field [latest_recv_time]
    bufferOffset = _serializer.time(obj.latest_recv_time, buffer, bufferOffset);
    // Serialize message field [latency]
    bufferOffset = StatisticsMeasurements.serialize(obj.latency, buffer, bufferOffset);
    // Serialize message field [frequency]
    bufferOffset = StatisticsMeasurements.serialize(obj.frequency, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TopicMeasurements
    let len;
    let data = new TopicMeasurements(null);
    // Deserialize message field [msg_loss]
    data.msg_loss = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [first_recv_time]
    data.first_recv_time = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [latest_recv_time]
    data.latest_recv_time = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [latency]
    data.latency = StatisticsMeasurements.deserialize(buffer, bufferOffset);
    // Deserialize message field [frequency]
    data.frequency = StatisticsMeasurements.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 88;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lcsr_nettools/TopicMeasurements';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6e15701183cd32bc7d08590562cf3f21';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 msg_loss
    time first_recv_time
    time latest_recv_time
    lcsr_nettools/StatisticsMeasurements latency
    lcsr_nettools/StatisticsMeasurements frequency
    
    ================================================================================
    MSG: lcsr_nettools/StatisticsMeasurements
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
    const resolved = new TopicMeasurements(null);
    if (msg.msg_loss !== undefined) {
      resolved.msg_loss = msg.msg_loss;
    }
    else {
      resolved.msg_loss = 0.0
    }

    if (msg.first_recv_time !== undefined) {
      resolved.first_recv_time = msg.first_recv_time;
    }
    else {
      resolved.first_recv_time = {secs: 0, nsecs: 0}
    }

    if (msg.latest_recv_time !== undefined) {
      resolved.latest_recv_time = msg.latest_recv_time;
    }
    else {
      resolved.latest_recv_time = {secs: 0, nsecs: 0}
    }

    if (msg.latency !== undefined) {
      resolved.latency = StatisticsMeasurements.Resolve(msg.latency)
    }
    else {
      resolved.latency = new StatisticsMeasurements()
    }

    if (msg.frequency !== undefined) {
      resolved.frequency = StatisticsMeasurements.Resolve(msg.frequency)
    }
    else {
      resolved.frequency = new StatisticsMeasurements()
    }

    return resolved;
    }
};

module.exports = TopicMeasurements;
