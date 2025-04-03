// Auto-generated. Do not edit!

// (in-package fixposition_driver_ros1.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class imubias {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.fusion_imu = null;
      this.imu_status = null;
      this.imu_noise = null;
      this.imu_conv = null;
      this.bias_acc = null;
      this.bias_gyr = null;
      this.bias_cov_acc = null;
      this.bias_cov_gyr = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('fusion_imu')) {
        this.fusion_imu = initObj.fusion_imu
      }
      else {
        this.fusion_imu = 0;
      }
      if (initObj.hasOwnProperty('imu_status')) {
        this.imu_status = initObj.imu_status
      }
      else {
        this.imu_status = 0;
      }
      if (initObj.hasOwnProperty('imu_noise')) {
        this.imu_noise = initObj.imu_noise
      }
      else {
        this.imu_noise = 0;
      }
      if (initObj.hasOwnProperty('imu_conv')) {
        this.imu_conv = initObj.imu_conv
      }
      else {
        this.imu_conv = 0;
      }
      if (initObj.hasOwnProperty('bias_acc')) {
        this.bias_acc = initObj.bias_acc
      }
      else {
        this.bias_acc = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('bias_gyr')) {
        this.bias_gyr = initObj.bias_gyr
      }
      else {
        this.bias_gyr = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('bias_cov_acc')) {
        this.bias_cov_acc = initObj.bias_cov_acc
      }
      else {
        this.bias_cov_acc = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('bias_cov_gyr')) {
        this.bias_cov_gyr = initObj.bias_cov_gyr
      }
      else {
        this.bias_cov_gyr = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type imubias
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [fusion_imu]
    bufferOffset = _serializer.int16(obj.fusion_imu, buffer, bufferOffset);
    // Serialize message field [imu_status]
    bufferOffset = _serializer.int16(obj.imu_status, buffer, bufferOffset);
    // Serialize message field [imu_noise]
    bufferOffset = _serializer.int16(obj.imu_noise, buffer, bufferOffset);
    // Serialize message field [imu_conv]
    bufferOffset = _serializer.int16(obj.imu_conv, buffer, bufferOffset);
    // Serialize message field [bias_acc]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.bias_acc, buffer, bufferOffset);
    // Serialize message field [bias_gyr]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.bias_gyr, buffer, bufferOffset);
    // Serialize message field [bias_cov_acc]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.bias_cov_acc, buffer, bufferOffset);
    // Serialize message field [bias_cov_gyr]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.bias_cov_gyr, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type imubias
    let len;
    let data = new imubias(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [fusion_imu]
    data.fusion_imu = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [imu_status]
    data.imu_status = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [imu_noise]
    data.imu_noise = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [imu_conv]
    data.imu_conv = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [bias_acc]
    data.bias_acc = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [bias_gyr]
    data.bias_gyr = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [bias_cov_acc]
    data.bias_cov_acc = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [bias_cov_gyr]
    data.bias_cov_gyr = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 104;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fixposition_driver_ros1/imubias';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '35ce34652f0847b6fbe7e55097d74211';
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
    # Fixposition FP_A-IMUBIAS Message
    #
    #
    ####################################################################################################
    
    Header header
    int16 fusion_imu                     # Fusion measurement status: IMU (see below)
    int16 imu_status                     # IMU bias status (see below)
    int16 imu_noise                      # IMU variance status (see below)
    int16 imu_conv                       # IMU convergence status (see below)
    geometry_msgs/Vector3 bias_acc       # Accelerometer bias
    geometry_msgs/Vector3 bias_gyr       # Gyroscope bias
    geometry_msgs/Vector3 bias_cov_acc   # Accelerometer bias covariance
    geometry_msgs/Vector3 bias_cov_gyr   # Gyroscope bias covariance
    
    
    # Fusion measurement status (fusion_imu)
    #
    # | Value | Description        |
    # |-------|--------------------|
    # |  null | Info not available |
    # |   0   | Not used           |
    # |   1   | Used               |
    # |   2   | Degraded           |
    
    
    # IMU bias status (imu_status)
    #
    # | Value | Description        |
    # |-------|--------------------|
    # |  null | Info not available |
    # |   0   | Not converged      |
    # |   1   | Warmstarted        |
    # |   2   | Rough convergence  |
    # |   3   | Fine convergence   |
    
    
    # IMU variance (imu_noise)
    #
    # | Value | Description        |
    # |-------|--------------------|
    # |  null | Info not available |
    # |   0   | Reserved           |
    # |   1   | Low noise          |
    # |   2   | Medium noise       |
    # |   3   | High noise         |
    # | 4...7 | Reserved           |
    
    
    # IMU accelerometer and gyroscope convergence (imu_conv)
    #
    # | Value | Description                      |
    # |-------|----------------------------------|
    # |  null | Info not available               |
    # |   0   | Awaiting Fusion                  |
    # |   1   | Awaiting IMU measurements        |
    # |   2   | Insufficient global measurements |
    # |   3   | Insufficient motion              |
    # |   4   | Converging                       |
    # | 5...6 | Reserved                         |
    # |   7   | Idle                             |
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
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new imubias(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.fusion_imu !== undefined) {
      resolved.fusion_imu = msg.fusion_imu;
    }
    else {
      resolved.fusion_imu = 0
    }

    if (msg.imu_status !== undefined) {
      resolved.imu_status = msg.imu_status;
    }
    else {
      resolved.imu_status = 0
    }

    if (msg.imu_noise !== undefined) {
      resolved.imu_noise = msg.imu_noise;
    }
    else {
      resolved.imu_noise = 0
    }

    if (msg.imu_conv !== undefined) {
      resolved.imu_conv = msg.imu_conv;
    }
    else {
      resolved.imu_conv = 0
    }

    if (msg.bias_acc !== undefined) {
      resolved.bias_acc = geometry_msgs.msg.Vector3.Resolve(msg.bias_acc)
    }
    else {
      resolved.bias_acc = new geometry_msgs.msg.Vector3()
    }

    if (msg.bias_gyr !== undefined) {
      resolved.bias_gyr = geometry_msgs.msg.Vector3.Resolve(msg.bias_gyr)
    }
    else {
      resolved.bias_gyr = new geometry_msgs.msg.Vector3()
    }

    if (msg.bias_cov_acc !== undefined) {
      resolved.bias_cov_acc = geometry_msgs.msg.Vector3.Resolve(msg.bias_cov_acc)
    }
    else {
      resolved.bias_cov_acc = new geometry_msgs.msg.Vector3()
    }

    if (msg.bias_cov_gyr !== undefined) {
      resolved.bias_cov_gyr = geometry_msgs.msg.Vector3.Resolve(msg.bias_cov_gyr)
    }
    else {
      resolved.bias_cov_gyr = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = imubias;
