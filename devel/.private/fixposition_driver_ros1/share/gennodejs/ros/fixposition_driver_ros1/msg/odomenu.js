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

class odomenu {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.pose_frame = null;
      this.kin_frame = null;
      this.pose = null;
      this.velocity = null;
      this.acceleration = null;
      this.fusion_status = null;
      this.imu_bias_status = null;
      this.gnss1_status = null;
      this.gnss2_status = null;
      this.wheelspeed_status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('pose_frame')) {
        this.pose_frame = initObj.pose_frame
      }
      else {
        this.pose_frame = '';
      }
      if (initObj.hasOwnProperty('kin_frame')) {
        this.kin_frame = initObj.kin_frame
      }
      else {
        this.kin_frame = '';
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.PoseWithCovariance();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new geometry_msgs.msg.TwistWithCovariance();
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('fusion_status')) {
        this.fusion_status = initObj.fusion_status
      }
      else {
        this.fusion_status = 0;
      }
      if (initObj.hasOwnProperty('imu_bias_status')) {
        this.imu_bias_status = initObj.imu_bias_status
      }
      else {
        this.imu_bias_status = 0;
      }
      if (initObj.hasOwnProperty('gnss1_status')) {
        this.gnss1_status = initObj.gnss1_status
      }
      else {
        this.gnss1_status = 0;
      }
      if (initObj.hasOwnProperty('gnss2_status')) {
        this.gnss2_status = initObj.gnss2_status
      }
      else {
        this.gnss2_status = 0;
      }
      if (initObj.hasOwnProperty('wheelspeed_status')) {
        this.wheelspeed_status = initObj.wheelspeed_status
      }
      else {
        this.wheelspeed_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type odomenu
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [pose_frame]
    bufferOffset = _serializer.string(obj.pose_frame, buffer, bufferOffset);
    // Serialize message field [kin_frame]
    bufferOffset = _serializer.string(obj.kin_frame, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.PoseWithCovariance.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.TwistWithCovariance.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.acceleration, buffer, bufferOffset);
    // Serialize message field [fusion_status]
    bufferOffset = _serializer.int16(obj.fusion_status, buffer, bufferOffset);
    // Serialize message field [imu_bias_status]
    bufferOffset = _serializer.int16(obj.imu_bias_status, buffer, bufferOffset);
    // Serialize message field [gnss1_status]
    bufferOffset = _serializer.int16(obj.gnss1_status, buffer, bufferOffset);
    // Serialize message field [gnss2_status]
    bufferOffset = _serializer.int16(obj.gnss2_status, buffer, bufferOffset);
    // Serialize message field [wheelspeed_status]
    bufferOffset = _serializer.int16(obj.wheelspeed_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type odomenu
    let len;
    let data = new odomenu(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose_frame]
    data.pose_frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [kin_frame]
    data.kin_frame = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.PoseWithCovariance.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.TwistWithCovariance.deserialize(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [fusion_status]
    data.fusion_status = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [imu_bias_status]
    data.imu_bias_status = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [gnss1_status]
    data.gnss1_status = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [gnss2_status]
    data.gnss2_status = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [wheelspeed_status]
    data.wheelspeed_status = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.pose_frame);
    length += _getByteLength(object.kin_frame);
    return length + 722;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fixposition_driver_ros1/odomenu';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eae2b348c8bfb758ec15b33f447d1eab';
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
    # Fixposition FP_A-ODOMENU Message
    #
    #
    ####################################################################################################
    
    Header header
    string pose_frame                            # frame of the pose values [pose, quaternion]
    string kin_frame                             # frame of the kinematic values [linear/angular velocity, acceleration]
    geometry_msgs/PoseWithCovariance pose        # position, orientation
    geometry_msgs/TwistWithCovariance velocity   # linear, angular
    geometry_msgs/Vector3 acceleration           # linear acceleration
    
    int16 fusion_status                          # field for the fusion status
    int16 imu_bias_status                        # field for the IMU bias status
    int16 gnss1_status                           # field for the gnss1 status
    int16 gnss2_status                           # field for the gnss2 status
    int16 wheelspeed_status                      # field for the wheelspeed status
    
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
    MSG: geometry_msgs/PoseWithCovariance
    # This represents a pose in free space with uncertainty.
    
    Pose pose
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/TwistWithCovariance
    # This expresses velocity in free space with uncertainty.
    
    Twist twist
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
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
    const resolved = new odomenu(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.pose_frame !== undefined) {
      resolved.pose_frame = msg.pose_frame;
    }
    else {
      resolved.pose_frame = ''
    }

    if (msg.kin_frame !== undefined) {
      resolved.kin_frame = msg.kin_frame;
    }
    else {
      resolved.kin_frame = ''
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.PoseWithCovariance.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.PoseWithCovariance()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = geometry_msgs.msg.TwistWithCovariance.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new geometry_msgs.msg.TwistWithCovariance()
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = geometry_msgs.msg.Vector3.Resolve(msg.acceleration)
    }
    else {
      resolved.acceleration = new geometry_msgs.msg.Vector3()
    }

    if (msg.fusion_status !== undefined) {
      resolved.fusion_status = msg.fusion_status;
    }
    else {
      resolved.fusion_status = 0
    }

    if (msg.imu_bias_status !== undefined) {
      resolved.imu_bias_status = msg.imu_bias_status;
    }
    else {
      resolved.imu_bias_status = 0
    }

    if (msg.gnss1_status !== undefined) {
      resolved.gnss1_status = msg.gnss1_status;
    }
    else {
      resolved.gnss1_status = 0
    }

    if (msg.gnss2_status !== undefined) {
      resolved.gnss2_status = msg.gnss2_status;
    }
    else {
      resolved.gnss2_status = 0
    }

    if (msg.wheelspeed_status !== undefined) {
      resolved.wheelspeed_status = msg.wheelspeed_status;
    }
    else {
      resolved.wheelspeed_status = 0
    }

    return resolved;
    }
};

module.exports = odomenu;
