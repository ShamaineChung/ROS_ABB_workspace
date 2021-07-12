// Auto-generated. Do not edit!

// (in-package niryo_one_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RobotState = require('./RobotState.js');

//-----------------------------------------------------------

class RobotMoveFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new RobotState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotMoveFeedback
    // Serialize message field [state]
    bufferOffset = RobotState.serialize(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotMoveFeedback
    let len;
    let data = new RobotMoveFeedback(null);
    // Deserialize message field [state]
    data.state = RobotState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'niryo_one_msgs/RobotMoveFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f0af3f1ad9e0dc3ec29de7b7426b5abe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # feedback
    niryo_one_msgs/RobotState state
    
    
    ================================================================================
    MSG: niryo_one_msgs/RobotState
    
    geometry_msgs/Point position
    niryo_one_msgs/RPY rpy
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: niryo_one_msgs/RPY
    # roll, pitch and yaw
    
    float64 roll
    float64 pitch
    float64 yaw
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotMoveFeedback(null);
    if (msg.state !== undefined) {
      resolved.state = RobotState.Resolve(msg.state)
    }
    else {
      resolved.state = new RobotState()
    }

    return resolved;
    }
};

module.exports = RobotMoveFeedback;
