// Auto-generated. Do not edit!

// (in-package lcsr_nettools.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TopicMeasurements = require('./TopicMeasurements.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TopicStatistics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.topic_name = null;
      this.recent_buffer_duration = null;
      this.recent = null;
      this.all_time = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('topic_name')) {
        this.topic_name = initObj.topic_name
      }
      else {
        this.topic_name = '';
      }
      if (initObj.hasOwnProperty('recent_buffer_duration')) {
        this.recent_buffer_duration = initObj.recent_buffer_duration
      }
      else {
        this.recent_buffer_duration = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('recent')) {
        this.recent = initObj.recent
      }
      else {
        this.recent = new TopicMeasurements();
      }
      if (initObj.hasOwnProperty('all_time')) {
        this.all_time = initObj.all_time
      }
      else {
        this.all_time = new TopicMeasurements();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TopicStatistics
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [topic_name]
    bufferOffset = _serializer.string(obj.topic_name, buffer, bufferOffset);
    // Serialize message field [recent_buffer_duration]
    bufferOffset = _serializer.duration(obj.recent_buffer_duration, buffer, bufferOffset);
    // Serialize message field [recent]
    bufferOffset = TopicMeasurements.serialize(obj.recent, buffer, bufferOffset);
    // Serialize message field [all_time]
    bufferOffset = TopicMeasurements.serialize(obj.all_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TopicStatistics
    let len;
    let data = new TopicStatistics(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [topic_name]
    data.topic_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [recent_buffer_duration]
    data.recent_buffer_duration = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [recent]
    data.recent = TopicMeasurements.deserialize(buffer, bufferOffset);
    // Deserialize message field [all_time]
    data.all_time = TopicMeasurements.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.topic_name.length;
    return length + 188;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lcsr_nettools/TopicStatistics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '414ca0d7c2276abebacb6812196057cd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    string topic_name
    duration recent_buffer_duration
    
    lcsr_nettools/TopicMeasurements recent
    lcsr_nettools/TopicMeasurements all_time
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: lcsr_nettools/TopicMeasurements
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
    const resolved = new TopicStatistics(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.topic_name !== undefined) {
      resolved.topic_name = msg.topic_name;
    }
    else {
      resolved.topic_name = ''
    }

    if (msg.recent_buffer_duration !== undefined) {
      resolved.recent_buffer_duration = msg.recent_buffer_duration;
    }
    else {
      resolved.recent_buffer_duration = {secs: 0, nsecs: 0}
    }

    if (msg.recent !== undefined) {
      resolved.recent = TopicMeasurements.Resolve(msg.recent)
    }
    else {
      resolved.recent = new TopicMeasurements()
    }

    if (msg.all_time !== undefined) {
      resolved.all_time = TopicMeasurements.Resolve(msg.all_time)
    }
    else {
      resolved.all_time = new TopicMeasurements()
    }

    return resolved;
    }
};

module.exports = TopicStatistics;
