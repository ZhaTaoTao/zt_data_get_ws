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

class gpzda {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.time = null;
      this.date = null;
      this.local_hr = null;
      this.local_min = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = '';
      }
      if (initObj.hasOwnProperty('date')) {
        this.date = initObj.date
      }
      else {
        this.date = '';
      }
      if (initObj.hasOwnProperty('local_hr')) {
        this.local_hr = initObj.local_hr
      }
      else {
        this.local_hr = 0;
      }
      if (initObj.hasOwnProperty('local_min')) {
        this.local_min = initObj.local_min
      }
      else {
        this.local_min = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type gpzda
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.string(obj.time, buffer, bufferOffset);
    // Serialize message field [date]
    bufferOffset = _serializer.string(obj.date, buffer, bufferOffset);
    // Serialize message field [local_hr]
    bufferOffset = _serializer.int16(obj.local_hr, buffer, bufferOffset);
    // Serialize message field [local_min]
    bufferOffset = _serializer.int16(obj.local_min, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type gpzda
    let len;
    let data = new gpzda(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [date]
    data.date = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [local_hr]
    data.local_hr = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [local_min]
    data.local_min = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.time);
    length += _getByteLength(object.date);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fixposition_driver_ros1/gpzda';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5aa4c52da2e45e51197dea2175085966';
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
    # Fixposition NMEA-GP-ZDA Message
    #
    #
    ####################################################################################################
    
    # Format | Field     | Unit            | Description
    # -------|-----------|-----------------|-------------------------------------------------------|
    Header     header    # [ns]            | Specifies the ROS time and Euclidian reference frame.
    string     time      # [hhmmss.ss(ss)] | UTC0 time (hours, minutes and seconds).
    string     date      # [dd/mm/yyyy]    | Date (UTC0).
    int16      local_hr  # [00+-13]        | Local zone hours, always 00 (= UTC).
    int16      local_min # [00-59]         | Local zone minutes, always 00 (= UTC).
    
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
    const resolved = new gpzda(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = ''
    }

    if (msg.date !== undefined) {
      resolved.date = msg.date;
    }
    else {
      resolved.date = ''
    }

    if (msg.local_hr !== undefined) {
      resolved.local_hr = msg.local_hr;
    }
    else {
      resolved.local_hr = 0
    }

    if (msg.local_min !== undefined) {
      resolved.local_min = msg.local_min;
    }
    else {
      resolved.local_min = 0
    }

    return resolved;
    }
};

module.exports = gpzda;
