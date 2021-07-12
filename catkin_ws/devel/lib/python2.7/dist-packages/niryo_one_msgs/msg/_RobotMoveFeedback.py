# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from niryo_one_msgs/RobotMoveFeedback.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import niryo_one_msgs.msg
import geometry_msgs.msg

class RobotMoveFeedback(genpy.Message):
  _md5sum = "f0af3f1ad9e0dc3ec29de7b7426b5abe"
  _type = "niryo_one_msgs/RobotMoveFeedback"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
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
"""
  __slots__ = ['state']
  _slot_types = ['niryo_one_msgs/RobotState']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       state

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RobotMoveFeedback, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.state is None:
        self.state = niryo_one_msgs.msg.RobotState()
    else:
      self.state = niryo_one_msgs.msg.RobotState()

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
      buff.write(_get_struct_6d().pack(_x.state.position.x, _x.state.position.y, _x.state.position.z, _x.state.rpy.roll, _x.state.rpy.pitch, _x.state.rpy.yaw))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.state is None:
        self.state = niryo_one_msgs.msg.RobotState()
      end = 0
      _x = self
      start = end
      end += 48
      (_x.state.position.x, _x.state.position.y, _x.state.position.z, _x.state.rpy.roll, _x.state.rpy.pitch, _x.state.rpy.yaw,) = _get_struct_6d().unpack(str[start:end])
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
      buff.write(_get_struct_6d().pack(_x.state.position.x, _x.state.position.y, _x.state.position.z, _x.state.rpy.roll, _x.state.rpy.pitch, _x.state.rpy.yaw))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.state is None:
        self.state = niryo_one_msgs.msg.RobotState()
      end = 0
      _x = self
      start = end
      end += 48
      (_x.state.position.x, _x.state.position.y, _x.state.position.z, _x.state.rpy.roll, _x.state.rpy.pitch, _x.state.rpy.yaw,) = _get_struct_6d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_6d = None
def _get_struct_6d():
    global _struct_6d
    if _struct_6d is None:
        _struct_6d = struct.Struct("<6d")
    return _struct_6d