// Auto-generated. Do not edit!

// (in-package fixposition_driver_ros1.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class WheelSensor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.location = null;
      this.vx = null;
      this.vy = null;
      this.vz = null;
      this.vx_valid = null;
      this.vy_valid = null;
      this.vz_valid = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('location')) {
        this.location = initObj.location
      }
      else {
        this.location = '';
      }
      if (initObj.hasOwnProperty('vx')) {
        this.vx = initObj.vx
      }
      else {
        this.vx = 0;
      }
      if (initObj.hasOwnProperty('vy')) {
        this.vy = initObj.vy
      }
      else {
        this.vy = 0;
      }
      if (initObj.hasOwnProperty('vz')) {
        this.vz = initObj.vz
      }
      else {
        this.vz = 0;
      }
      if (initObj.hasOwnProperty('vx_valid')) {
        this.vx_valid = initObj.vx_valid
      }
      else {
        this.vx_valid = false;
      }
      if (initObj.hasOwnProperty('vy_valid')) {
        this.vy_valid = initObj.vy_valid
      }
      else {
        this.vy_valid = false;
      }
      if (initObj.hasOwnProperty('vz_valid')) {
        this.vz_valid = initObj.vz_valid
      }
      else {
        this.vz_valid = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelSensor
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [location]
    bufferOffset = _serializer.string(obj.location, buffer, bufferOffset);
    // Serialize message field [vx]
    bufferOffset = _serializer.int32(obj.vx, buffer, bufferOffset);
    // Serialize message field [vy]
    bufferOffset = _serializer.int32(obj.vy, buffer, bufferOffset);
    // Serialize message field [vz]
    bufferOffset = _serializer.int32(obj.vz, buffer, bufferOffset);
    // Serialize message field [vx_valid]
    bufferOffset = _serializer.bool(obj.vx_valid, buffer, bufferOffset);
    // Serialize message field [vy_valid]
    bufferOffset = _serializer.bool(obj.vy_valid, buffer, bufferOffset);
    // Serialize message field [vz_valid]
    bufferOffset = _serializer.bool(obj.vz_valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelSensor
    let len;
    let data = new WheelSensor(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [location]
    data.location = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [vx]
    data.vx = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [vy]
    data.vy = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [vz]
    data.vz = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [vx_valid]
    data.vx_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [vy_valid]
    data.vy_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [vz_valid]
    data.vz_valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.location);
    return length + 19;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fixposition_driver_ros1/WheelSensor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '80080356d0f1e51e2dbb0fca7fd5dc02';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ####################################################################################################
    #
    #    Copyright (c) 2023  ___     ___
    #                       \\  \\  /  /
    #                        \\  \\/  /
    #                         /  /\\  \\
    #                        /__/  \\__\\  Fixposition AG
    #
    ####################################################################################################
    #
    # Individual wheelspeed measurement
    #
    #
    ####################################################################################################
    # Standard metadata
    std_msgs/Header header
    
    # Location of the wheelspeed measurement (one of: RC, FR, FL, RR, RL)
    string location
    
    # Velocity values in [mm/s] as integer 32bit
    int32 vx
    int32 vy
    int32 vz
    
    # Velocity validity
    bool vx_valid
    bool vy_valid
    bool vz_valid
    
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
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WheelSensor(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.location !== undefined) {
      resolved.location = msg.location;
    }
    else {
      resolved.location = ''
    }

    if (msg.vx !== undefined) {
      resolved.vx = msg.vx;
    }
    else {
      resolved.vx = 0
    }

    if (msg.vy !== undefined) {
      resolved.vy = msg.vy;
    }
    else {
      resolved.vy = 0
    }

    if (msg.vz !== undefined) {
      resolved.vz = msg.vz;
    }
    else {
      resolved.vz = 0
    }

    if (msg.vx_valid !== undefined) {
      resolved.vx_valid = msg.vx_valid;
    }
    else {
      resolved.vx_valid = false
    }

    if (msg.vy_valid !== undefined) {
      resolved.vy_valid = msg.vy_valid;
    }
    else {
      resolved.vy_valid = false
    }

    if (msg.vz_valid !== undefined) {
      resolved.vz_valid = msg.vz_valid;
    }
    else {
      resolved.vz_valid = false
    }

    return resolved;
    }
};

module.exports = WheelSensor;
