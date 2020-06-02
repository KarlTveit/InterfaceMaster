; Auto-generated. Do not edit!


(cl:in-package asctec_hl_comm-msg)


;//! \htmlinclude mav_state.msg.html

(cl:defclass <mav_state> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass mav_state (<mav_state>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mav_state>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mav_state)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name asctec_hl_comm-msg:<mav_state> is deprecated: use asctec_hl_comm-msg:mav_state instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <mav_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:header-val is deprecated.  Use asctec_hl_comm-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <mav_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:pose-val is deprecated.  Use asctec_hl_comm-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <mav_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:velocity-val is deprecated.  Use asctec_hl_comm-msg:velocity instead.")
  (velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mav_state>) ostream)
  "Serializes a message object of type '<mav_state>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mav_state>) istream)
  "Deserializes a message object of type '<mav_state>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mav_state>)))
  "Returns string type for a message object of type '<mav_state>"
  "asctec_hl_comm/mav_state")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mav_state)))
  "Returns string type for a message object of type 'mav_state"
  "asctec_hl_comm/mav_state")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mav_state>)))
  "Returns md5sum for a message object of type '<mav_state>"
  "e034f695cee32efa98d5cb7e960000e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mav_state)))
  "Returns md5sum for a message object of type 'mav_state"
  "e034f695cee32efa98d5cb7e960000e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mav_state>)))
  "Returns full string definition for message of type '<mav_state>"
  (cl:format cl:nil "Header header~%geometry_msgs/Pose          pose~%geometry_msgs/Vector3       velocity~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mav_state)))
  "Returns full string definition for message of type 'mav_state"
  (cl:format cl:nil "Header header~%geometry_msgs/Pose          pose~%geometry_msgs/Vector3       velocity~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mav_state>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mav_state>))
  "Converts a ROS message object to a list"
  (cl:list 'mav_state
    (cl:cons ':header (header msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':velocity (velocity msg))
))
