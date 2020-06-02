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

class mav_status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.battery_voltage = null;
      this.flight_mode_ll = null;
      this.state_estimation = null;
      this.position_control = null;
      this.serial_interface_enabled = null;
      this.serial_interface_active = null;
      this.flight_time = null;
      this.cpu_load = null;
      this.motor_status = null;
      this.gps_status = null;
      this.gps_num_satellites = null;
      this.debug1 = null;
      this.debug2 = null;
      this.have_SSDK_parameters = null;
      this.tx_packets = null;
      this.tx_packets_good = null;
      this.rx_packets = null;
      this.rx_packets_good = null;
      this.timesync_offset = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('battery_voltage')) {
        this.battery_voltage = initObj.battery_voltage
      }
      else {
        this.battery_voltage = 0.0;
      }
      if (initObj.hasOwnProperty('flight_mode_ll')) {
        this.flight_mode_ll = initObj.flight_mode_ll
      }
      else {
        this.flight_mode_ll = '';
      }
      if (initObj.hasOwnProperty('state_estimation')) {
        this.state_estimation = initObj.state_estimation
      }
      else {
        this.state_estimation = '';
      }
      if (initObj.hasOwnProperty('position_control')) {
        this.position_control = initObj.position_control
      }
      else {
        this.position_control = '';
      }
      if (initObj.hasOwnProperty('serial_interface_enabled')) {
        this.serial_interface_enabled = initObj.serial_interface_enabled
      }
      else {
        this.serial_interface_enabled = false;
      }
      if (initObj.hasOwnProperty('serial_interface_active')) {
        this.serial_interface_active = initObj.serial_interface_active
      }
      else {
        this.serial_interface_active = false;
      }
      if (initObj.hasOwnProperty('flight_time')) {
        this.flight_time = initObj.flight_time
      }
      else {
        this.flight_time = 0.0;
      }
      if (initObj.hasOwnProperty('cpu_load')) {
        this.cpu_load = initObj.cpu_load
      }
      else {
        this.cpu_load = 0.0;
      }
      if (initObj.hasOwnProperty('motor_status')) {
        this.motor_status = initObj.motor_status
      }
      else {
        this.motor_status = '';
      }
      if (initObj.hasOwnProperty('gps_status')) {
        this.gps_status = initObj.gps_status
      }
      else {
        this.gps_status = '';
      }
      if (initObj.hasOwnProperty('gps_num_satellites')) {
        this.gps_num_satellites = initObj.gps_num_satellites
      }
      else {
        this.gps_num_satellites = 0;
      }
      if (initObj.hasOwnProperty('debug1')) {
        this.debug1 = initObj.debug1
      }
      else {
        this.debug1 = 0;
      }
      if (initObj.hasOwnProperty('debug2')) {
        this.debug2 = initObj.debug2
      }
      else {
        this.debug2 = 0;
      }
      if (initObj.hasOwnProperty('have_SSDK_parameters')) {
        this.have_SSDK_parameters = initObj.have_SSDK_parameters
      }
      else {
        this.have_SSDK_parameters = false;
      }
      if (initObj.hasOwnProperty('tx_packets')) {
        this.tx_packets = initObj.tx_packets
      }
      else {
        this.tx_packets = 0;
      }
      if (initObj.hasOwnProperty('tx_packets_good')) {
        this.tx_packets_good = initObj.tx_packets_good
      }
      else {
        this.tx_packets_good = 0;
      }
      if (initObj.hasOwnProperty('rx_packets')) {
        this.rx_packets = initObj.rx_packets
      }
      else {
        this.rx_packets = 0;
      }
      if (initObj.hasOwnProperty('rx_packets_good')) {
        this.rx_packets_good = initObj.rx_packets_good
      }
      else {
        this.rx_packets_good = 0;
      }
      if (initObj.hasOwnProperty('timesync_offset')) {
        this.timesync_offset = initObj.timesync_offset
      }
      else {
        this.timesync_offset = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type mav_status
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [battery_voltage]
    bufferOffset = _serializer.float32(obj.battery_voltage, buffer, bufferOffset);
    // Serialize message field [flight_mode_ll]
    bufferOffset = _serializer.string(obj.flight_mode_ll, buffer, bufferOffset);
    // Serialize message field [state_estimation]
    bufferOffset = _serializer.string(obj.state_estimation, buffer, bufferOffset);
    // Serialize message field [position_control]
    bufferOffset = _serializer.string(obj.position_control, buffer, bufferOffset);
    // Serialize message field [serial_interface_enabled]
    bufferOffset = _serializer.bool(obj.serial_interface_enabled, buffer, bufferOffset);
    // Serialize message field [serial_interface_active]
    bufferOffset = _serializer.bool(obj.serial_interface_active, buffer, bufferOffset);
    // Serialize message field [flight_time]
    bufferOffset = _serializer.float32(obj.flight_time, buffer, bufferOffset);
    // Serialize message field [cpu_load]
    bufferOffset = _serializer.float32(obj.cpu_load, buffer, bufferOffset);
    // Serialize message field [motor_status]
    bufferOffset = _serializer.string(obj.motor_status, buffer, bufferOffset);
    // Serialize message field [gps_status]
    bufferOffset = _serializer.string(obj.gps_status, buffer, bufferOffset);
    // Serialize message field [gps_num_satellites]
    bufferOffset = _serializer.int32(obj.gps_num_satellites, buffer, bufferOffset);
    // Serialize message field [debug1]
    bufferOffset = _serializer.int32(obj.debug1, buffer, bufferOffset);
    // Serialize message field [debug2]
    bufferOffset = _serializer.int32(obj.debug2, buffer, bufferOffset);
    // Serialize message field [have_SSDK_parameters]
    bufferOffset = _serializer.bool(obj.have_SSDK_parameters, buffer, bufferOffset);
    // Serialize message field [tx_packets]
    bufferOffset = _serializer.uint32(obj.tx_packets, buffer, bufferOffset);
    // Serialize message field [tx_packets_good]
    bufferOffset = _serializer.uint32(obj.tx_packets_good, buffer, bufferOffset);
    // Serialize message field [rx_packets]
    bufferOffset = _serializer.uint32(obj.rx_packets, buffer, bufferOffset);
    // Serialize message field [rx_packets_good]
    bufferOffset = _serializer.uint32(obj.rx_packets_good, buffer, bufferOffset);
    // Serialize message field [timesync_offset]
    bufferOffset = _serializer.float32(obj.timesync_offset, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type mav_status
    let len;
    let data = new mav_status(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [battery_voltage]
    data.battery_voltage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [flight_mode_ll]
    data.flight_mode_ll = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [state_estimation]
    data.state_estimation = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [position_control]
    data.position_control = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [serial_interface_enabled]
    data.serial_interface_enabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [serial_interface_active]
    data.serial_interface_active = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [flight_time]
    data.flight_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cpu_load]
    data.cpu_load = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [motor_status]
    data.motor_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [gps_status]
    data.gps_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [gps_num_satellites]
    data.gps_num_satellites = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [debug1]
    data.debug1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [debug2]
    data.debug2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [have_SSDK_parameters]
    data.have_SSDK_parameters = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [tx_packets]
    data.tx_packets = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [tx_packets_good]
    data.tx_packets_good = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [rx_packets]
    data.rx_packets = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [rx_packets_good]
    data.rx_packets_good = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [timesync_offset]
    data.timesync_offset = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.flight_mode_ll.length;
    length += object.state_estimation.length;
    length += object.position_control.length;
    length += object.motor_status.length;
    length += object.gps_status.length;
    return length + 67;
  }

  static datatype() {
    // Returns string type for a message object
    return 'asctec_hl_comm/mav_status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f975cbdf223868931f194323c62d7be5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float32     battery_voltage
    string      flight_mode_ll
    string      state_estimation
    string      position_control
    bool        serial_interface_enabled
    bool        serial_interface_active
    float32     flight_time
    float32     cpu_load
    
    string      motor_status
    
    string      gps_status
    int32       gps_num_satellites 
    
    int32       debug1
    int32       debug2
    
    bool        have_SSDK_parameters
    
    uint32      tx_packets
    uint32      tx_packets_good
    uint32      rx_packets
    uint32      rx_packets_good
    
    float32     timesync_offset
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
    const resolved = new mav_status(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.battery_voltage !== undefined) {
      resolved.battery_voltage = msg.battery_voltage;
    }
    else {
      resolved.battery_voltage = 0.0
    }

    if (msg.flight_mode_ll !== undefined) {
      resolved.flight_mode_ll = msg.flight_mode_ll;
    }
    else {
      resolved.flight_mode_ll = ''
    }

    if (msg.state_estimation !== undefined) {
      resolved.state_estimation = msg.state_estimation;
    }
    else {
      resolved.state_estimation = ''
    }

    if (msg.position_control !== undefined) {
      resolved.position_control = msg.position_control;
    }
    else {
      resolved.position_control = ''
    }

    if (msg.serial_interface_enabled !== undefined) {
      resolved.serial_interface_enabled = msg.serial_interface_enabled;
    }
    else {
      resolved.serial_interface_enabled = false
    }

    if (msg.serial_interface_active !== undefined) {
      resolved.serial_interface_active = msg.serial_interface_active;
    }
    else {
      resolved.serial_interface_active = false
    }

    if (msg.flight_time !== undefined) {
      resolved.flight_time = msg.flight_time;
    }
    else {
      resolved.flight_time = 0.0
    }

    if (msg.cpu_load !== undefined) {
      resolved.cpu_load = msg.cpu_load;
    }
    else {
      resolved.cpu_load = 0.0
    }

    if (msg.motor_status !== undefined) {
      resolved.motor_status = msg.motor_status;
    }
    else {
      resolved.motor_status = ''
    }

    if (msg.gps_status !== undefined) {
      resolved.gps_status = msg.gps_status;
    }
    else {
      resolved.gps_status = ''
    }

    if (msg.gps_num_satellites !== undefined) {
      resolved.gps_num_satellites = msg.gps_num_satellites;
    }
    else {
      resolved.gps_num_satellites = 0
    }

    if (msg.debug1 !== undefined) {
      resolved.debug1 = msg.debug1;
    }
    else {
      resolved.debug1 = 0
    }

    if (msg.debug2 !== undefined) {
      resolved.debug2 = msg.debug2;
    }
    else {
      resolved.debug2 = 0
    }

    if (msg.have_SSDK_parameters !== undefined) {
      resolved.have_SSDK_parameters = msg.have_SSDK_parameters;
    }
    else {
      resolved.have_SSDK_parameters = false
    }

    if (msg.tx_packets !== undefined) {
      resolved.tx_packets = msg.tx_packets;
    }
    else {
      resolved.tx_packets = 0
    }

    if (msg.tx_packets_good !== undefined) {
      resolved.tx_packets_good = msg.tx_packets_good;
    }
    else {
      resolved.tx_packets_good = 0
    }

    if (msg.rx_packets !== undefined) {
      resolved.rx_packets = msg.rx_packets;
    }
    else {
      resolved.rx_packets = 0
    }

    if (msg.rx_packets_good !== undefined) {
      resolved.rx_packets_good = msg.rx_packets_good;
    }
    else {
      resolved.rx_packets_good = 0
    }

    if (msg.timesync_offset !== undefined) {
      resolved.timesync_offset = msg.timesync_offset;
    }
    else {
      resolved.timesync_offset = 0.0
    }

    return resolved;
    }
};

module.exports = mav_status;
