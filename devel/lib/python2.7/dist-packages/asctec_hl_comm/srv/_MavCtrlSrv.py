# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from asctec_hl_comm/MavCtrlSrvRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import asctec_hl_comm.msg
import std_msgs.msg

class MavCtrlSrvRequest(genpy.Message):
  _md5sum = "38a627ff8fcd6d0f534f521aa37786af"
  _type = "asctec_hl_comm/MavCtrlSrvRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """mav_ctrl ctrl

================================================================================
MSG: asctec_hl_comm/mav_ctrl
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
"""
  __slots__ = ['ctrl']
  _slot_types = ['asctec_hl_comm/mav_ctrl']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       ctrl

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MavCtrlSrvRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.ctrl is None:
        self.ctrl = asctec_hl_comm.msg.mav_ctrl()
    else:
      self.ctrl = asctec_hl_comm.msg.mav_ctrl()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.ctrl.header.seq, _x.ctrl.header.stamp.secs, _x.ctrl.header.stamp.nsecs))
      _x = self.ctrl.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_b6f().pack(_x.ctrl.type, _x.ctrl.x, _x.ctrl.y, _x.ctrl.z, _x.ctrl.yaw, _x.ctrl.v_max_xy, _x.ctrl.v_max_z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.ctrl is None:
        self.ctrl = asctec_hl_comm.msg.mav_ctrl()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.ctrl.header.seq, _x.ctrl.header.stamp.secs, _x.ctrl.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.ctrl.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.ctrl.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 25
      (_x.ctrl.type, _x.ctrl.x, _x.ctrl.y, _x.ctrl.z, _x.ctrl.yaw, _x.ctrl.v_max_xy, _x.ctrl.v_max_z,) = _get_struct_b6f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.ctrl.header.seq, _x.ctrl.header.stamp.secs, _x.ctrl.header.stamp.nsecs))
      _x = self.ctrl.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_b6f().pack(_x.ctrl.type, _x.ctrl.x, _x.ctrl.y, _x.ctrl.z, _x.ctrl.yaw, _x.ctrl.v_max_xy, _x.ctrl.v_max_z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.ctrl is None:
        self.ctrl = asctec_hl_comm.msg.mav_ctrl()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.ctrl.header.seq, _x.ctrl.header.stamp.secs, _x.ctrl.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.ctrl.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.ctrl.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 25
      (_x.ctrl.type, _x.ctrl.x, _x.ctrl.y, _x.ctrl.z, _x.ctrl.yaw, _x.ctrl.v_max_xy, _x.ctrl.v_max_z,) = _get_struct_b6f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_b6f = None
def _get_struct_b6f():
    global _struct_b6f
    if _struct_b6f is None:
        _struct_b6f = struct.Struct("<b6f")
    return _struct_b6f
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from asctec_hl_comm/MavCtrlSrvResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import asctec_hl_comm.msg
import std_msgs.msg

class MavCtrlSrvResponse(genpy.Message):
  _md5sum = "b903b08125ca08bbbb20320238af4215"
  _type = "asctec_hl_comm/MavCtrlSrvResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """mav_ctrl ctrl_result

================================================================================
MSG: asctec_hl_comm/mav_ctrl
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
"""
  __slots__ = ['ctrl_result']
  _slot_types = ['asctec_hl_comm/mav_ctrl']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       ctrl_result

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MavCtrlSrvResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.ctrl_result is None:
        self.ctrl_result = asctec_hl_comm.msg.mav_ctrl()
    else:
      self.ctrl_result = asctec_hl_comm.msg.mav_ctrl()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.ctrl_result.header.seq, _x.ctrl_result.header.stamp.secs, _x.ctrl_result.header.stamp.nsecs))
      _x = self.ctrl_result.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_b6f().pack(_x.ctrl_result.type, _x.ctrl_result.x, _x.ctrl_result.y, _x.ctrl_result.z, _x.ctrl_result.yaw, _x.ctrl_result.v_max_xy, _x.ctrl_result.v_max_z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.ctrl_result is None:
        self.ctrl_result = asctec_hl_comm.msg.mav_ctrl()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.ctrl_result.header.seq, _x.ctrl_result.header.stamp.secs, _x.ctrl_result.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.ctrl_result.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.ctrl_result.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 25
      (_x.ctrl_result.type, _x.ctrl_result.x, _x.ctrl_result.y, _x.ctrl_result.z, _x.ctrl_result.yaw, _x.ctrl_result.v_max_xy, _x.ctrl_result.v_max_z,) = _get_struct_b6f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.ctrl_result.header.seq, _x.ctrl_result.header.stamp.secs, _x.ctrl_result.header.stamp.nsecs))
      _x = self.ctrl_result.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_b6f().pack(_x.ctrl_result.type, _x.ctrl_result.x, _x.ctrl_result.y, _x.ctrl_result.z, _x.ctrl_result.yaw, _x.ctrl_result.v_max_xy, _x.ctrl_result.v_max_z))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.ctrl_result is None:
        self.ctrl_result = asctec_hl_comm.msg.mav_ctrl()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.ctrl_result.header.seq, _x.ctrl_result.header.stamp.secs, _x.ctrl_result.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.ctrl_result.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.ctrl_result.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 25
      (_x.ctrl_result.type, _x.ctrl_result.x, _x.ctrl_result.y, _x.ctrl_result.z, _x.ctrl_result.yaw, _x.ctrl_result.v_max_xy, _x.ctrl_result.v_max_z,) = _get_struct_b6f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_b6f = None
def _get_struct_b6f():
    global _struct_b6f
    if _struct_b6f is None:
        _struct_b6f = struct.Struct("<b6f")
    return _struct_b6f
class MavCtrlSrv(object):
  _type          = 'asctec_hl_comm/MavCtrlSrv'
  _md5sum = 'ed4ced4e777c3a84e6602a79aaabcdfe'
  _request_class  = MavCtrlSrvRequest
  _response_class = MavCtrlSrvResponse
