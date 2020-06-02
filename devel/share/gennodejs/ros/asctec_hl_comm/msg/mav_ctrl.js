// Auto-generated. Do not edit!

// (in-package asctec_hl_comm.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class mav_ctrl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.type = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.yaw = null;
      this.v_max_xy = null;
      this.v_max_z = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('v_max_xy')) {
        this.v_max_xy = initObj.v_max_xy
      }
      else {
        this.v_max_xy = 0.0;
      }
      if (initObj.hasOwnProperty('v_max_z')) {
        this.v_max_z = initObj.v_max_z
      }
      else {
        this.v_max_z = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mav_ctrl
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int8(obj.type, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float32(obj.z, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float32(obj.yaw, buffer, bufferOffset);
    // Serialize message field [v_max_xy]
    bufferOffset = _serializer.float32(obj.v_max_xy, buffer, bufferOffset);
    // Serialize message field [v_max_z]
    bufferOffset = _serializer.float32(obj.v_max_z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mav_ctrl
    let len;
    let data = new mav_ctrl(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [v_max_xy]
    data.v_max_xy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [v_max_z]
    data.v_max_z = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'asctec_hl_comm/mav_ctrl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '845e0a830a06ad942cc0b1907c31bc38';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int8        type        #message type
    
    # control commands, all units in SI units !!!
    # There are 3 operating modes of the helicopter:
    # 1. Acceleration: x, y, z correspond to x_dotdot etc... with the exception that yaw is angular velocity
    #    Inputs must be in body-coordinates
    #    Currently x~pitch, y~roll, z~thrust, units in rad and rad/s for yaw
    # 2. Velocity: x, y, z, yaw correspond to x_dot etc...
    #    Vehicle must have it's own pose estimation e.g. vision/GPS
    #    Inputs must be in body-coordinates
    #    Units in m/s and rad/s respectively
    # 3. Position
    #    Vehicle must have it's own pose estimation e.g. vision/GPS
    #    Inputs in fixed coordinate system
    #    v_max_* is only valid for this mode and limits the velocity a vehicle approaches the waypoint
    
    float32     x
    float32     y
    float32     z
    float32     yaw
    float32     v_max_xy
    float32     v_max_z
    
    int8 acceleration = 1
    int8 velocity = 2
    int8 position = 3
    int8 velocity_body = 4
    int8 position_body = 5
    
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
    const resolved = new mav_ctrl(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.v_max_xy !== undefined) {
      resolved.v_max_xy = msg.v_max_xy;
    }
    else {
      resolved.v_max_xy = 0.0
    }

    if (msg.v_max_z !== undefined) {
      resolved.v_max_z = msg.v_max_z;
    }
    else {
      resolved.v_max_z = 0.0
    }

    return resolved;
    }
};

// Constants for message
mav_ctrl.Constants = {
  ACCELERATION: 1,
  VELOCITY: 2,
  POSITION: 3,
  VELOCITY_BODY: 4,
  POSITION_BODY: 5,
}

module.exports = mav_ctrl;
