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

class gnssant {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.gnss1_state = null;
      this.gnss1_power = null;
      this.gnss1_age = null;
      this.gnss2_state = null;
      this.gnss2_power = null;
      this.gnss2_age = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('gnss1_state')) {
        this.gnss1_state = initObj.gnss1_state
      }
      else {
        this.gnss1_state = '';
      }
      if (initObj.hasOwnProperty('gnss1_power')) {
        this.gnss1_power = initObj.gnss1_power
      }
      else {
        this.gnss1_power = '';
      }
      if (initObj.hasOwnProperty('gnss1_age')) {
        this.gnss1_age = initObj.gnss1_age
      }
      else {
        this.gnss1_age = 0;
      }
      if (initObj.hasOwnProperty('gnss2_state')) {
        this.gnss2_state = initObj.gnss2_state
      }
      else {
        this.gnss2_state = '';
      }
      if (initObj.hasOwnProperty('gnss2_power')) {
        this.gnss2_power = initObj.gnss2_power
      }
      else {
        this.gnss2_power = '';
      }
      if (initObj.hasOwnProperty('gnss2_age')) {
        this.gnss2_age = initObj.gnss2_age
      }
      else {
        this.gnss2_age = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type gnssant
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [gnss1_state]
    bufferOffset = _serializer.string(obj.gnss1_state, buffer, bufferOffset);
    // Serialize message field [gnss1_power]
    bufferOffset = _serializer.string(obj.gnss1_power, buffer, bufferOffset);
    // Serialize message field [gnss1_age]
    bufferOffset = _serializer.int32(obj.gnss1_age, buffer, bufferOffset);
    // Serialize message field [gnss2_state]
    bufferOffset = _serializer.string(obj.gnss2_state, buffer, bufferOffset);
    // Serialize message field [gnss2_power]
    bufferOffset = _serializer.string(obj.gnss2_power, buffer, bufferOffset);
    // Serialize message field [gnss2_age]
    bufferOffset = _serializer.int32(obj.gnss2_age, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type gnssant
    let len;
    let data = new gnssant(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [gnss1_state]
    data.gnss1_state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [gnss1_power]
    data.gnss1_power = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [gnss1_age]
    data.gnss1_age = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [gnss2_state]
    data.gnss2_state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [gnss2_power]
    data.gnss2_power = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [gnss2_age]
    data.gnss2_age = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.gnss1_state);
    length += _getByteLength(object.gnss1_power);
    length += _getByteLength(object.gnss2_state);
    length += _getByteLength(object.gnss2_power);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fixposition_driver_ros1/gnssant';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3efa4edf5957d49615254580afca41bd';
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
    # Fixposition FP_A-GNSSANT Message
    #
    #
    ####################################################################################################
    
    Header header
    string gnss1_state   # GNSS1 antenna state
    string gnss1_power   # GNSS1 antenna power
    int32  gnss1_age     # Time since gnss1_state or gnss1_power information last changed
    string gnss2_state   # GNSS2 antenna state
    string gnss2_power   # GNSS2 antenna power
    int32  gnss2_age     # Time since gnss2_state or gnss2_power information last changed
    
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
    const resolved = new gnssant(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.gnss1_state !== undefined) {
      resolved.gnss1_state = msg.gnss1_state;
    }
    else {
      resolved.gnss1_state = ''
    }

    if (msg.gnss1_power !== undefined) {
      resolved.gnss1_power = msg.gnss1_power;
    }
    else {
      resolved.gnss1_power = ''
    }

    if (msg.gnss1_age !== undefined) {
      resolved.gnss1_age = msg.gnss1_age;
    }
    else {
      resolved.gnss1_age = 0
    }

    if (msg.gnss2_state !== undefined) {
      resolved.gnss2_state = msg.gnss2_state;
    }
    else {
      resolved.gnss2_state = ''
    }

    if (msg.gnss2_power !== undefined) {
      resolved.gnss2_power = msg.gnss2_power;
    }
    else {
      resolved.gnss2_power = ''
    }

    if (msg.gnss2_age !== undefined) {
      resolved.gnss2_age = msg.gnss2_age;
    }
    else {
      resolved.gnss2_age = 0
    }

    return resolved;
    }
};

module.exports = gnssant;
