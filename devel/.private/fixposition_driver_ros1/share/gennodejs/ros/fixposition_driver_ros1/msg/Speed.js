// Auto-generated. Do not edit!

// (in-package fixposition_driver_ros1.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WheelSensor = require('./WheelSensor.js');

//-----------------------------------------------------------

class Speed {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sensors = null;
    }
    else {
      if (initObj.hasOwnProperty('sensors')) {
        this.sensors = initObj.sensors
      }
      else {
        this.sensors = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Speed
    // Serialize message field [sensors]
    // Serialize the length for message field [sensors]
    bufferOffset = _serializer.uint32(obj.sensors.length, buffer, bufferOffset);
    obj.sensors.forEach((val) => {
      bufferOffset = WheelSensor.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Speed
    let len;
    let data = new Speed(null);
    // Deserialize message field [sensors]
    // Deserialize array length for message field [sensors]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.sensors = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.sensors[i] = WheelSensor.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.sensors.forEach((val) => {
      length += WheelSensor.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fixposition_driver_ros1/Speed';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c35c230ca1b330732decce9c593d3ae9';
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
    # Wheel speed input to Fixposition ROS Driver
    #
    #
    ####################################################################################################
    
    # Velocity values for one or several WheelSensors
    fixposition_driver_ros1/WheelSensor[] sensors
    
    ================================================================================
    MSG: fixposition_driver_ros1/WheelSensor
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
    const resolved = new Speed(null);
    if (msg.sensors !== undefined) {
      resolved.sensors = new Array(msg.sensors.length);
      for (let i = 0; i < resolved.sensors.length; ++i) {
        resolved.sensors[i] = WheelSensor.Resolve(msg.sensors[i]);
      }
    }
    else {
      resolved.sensors = []
    }

    return resolved;
    }
};

module.exports = Speed;
