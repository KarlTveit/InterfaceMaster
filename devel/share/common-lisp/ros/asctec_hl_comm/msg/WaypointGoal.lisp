; Auto-generated. Do not edit!


(cl:in-package asctec_hl_comm-msg)


;//! \htmlinclude WaypointGoal.msg.html

(cl:defclass <WaypointGoal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (goal_pos
    :reader goal_pos
    :initarg :goal_pos
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (goal_yaw
    :reader goal_yaw
    :initarg :goal_yaw
    :type cl:float
    :initform 0.0)
   (max_speed
    :reader max_speed
    :initarg :max_speed
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (accuracy_position
    :reader accuracy_position
    :initarg :accuracy_position
    :type cl:float
    :initform 0.0)
   (accuracy_orientation
    :reader accuracy_orientation
    :initarg :accuracy_orientation
    :type cl:float
    :initform 0.0)
   (timeout
    :reader timeout
    :initarg :timeout
    :type cl:float
    :initform 0.0))
)

(cl:defclass WaypointGoal (<WaypointGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name asctec_hl_comm-msg:<WaypointGoal> is deprecated: use asctec_hl_comm-msg:WaypointGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WaypointGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:header-val is deprecated.  Use asctec_hl_comm-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_pos-val :lambda-list '(m))
(cl:defmethod goal_pos-val ((m <WaypointGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:goal_pos-val is deprecated.  Use asctec_hl_comm-msg:goal_pos instead.")
  (goal_pos m))

(cl:ensure-generic-function 'goal_yaw-val :lambda-list '(m))
(cl:defmethod goal_yaw-val ((m <WaypointGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:goal_yaw-val is deprecated.  Use asctec_hl_comm-msg:goal_yaw instead.")
  (goal_yaw m))

(cl:ensure-generic-function 'max_speed-val :lambda-list '(m))
(cl:defmethod max_speed-val ((m <WaypointGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:max_speed-val is deprecated.  Use asctec_hl_comm-msg:max_speed instead.")
  (max_speed m))

(cl:ensure-generic-function 'accuracy_position-val :lambda-list '(m))
(cl:defmethod accuracy_position-val ((m <WaypointGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:accuracy_position-val is deprecated.  Use asctec_hl_comm-msg:accuracy_position instead.")
  (accuracy_position m))

(cl:ensure-generic-function 'accuracy_orientation-val :lambda-list '(m))
(cl:defmethod accuracy_orientation-val ((m <WaypointGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:accuracy_orientation-val is deprecated.  Use asctec_hl_comm-msg:accuracy_orientation instead.")
  (accuracy_orientation m))

(cl:ensure-generic-function 'timeout-val :lambda-list '(m))
(cl:defmethod timeout-val ((m <WaypointGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:timeout-val is deprecated.  Use asctec_hl_comm-msg:timeout instead.")
  (timeout m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointGoal>) ostream)
  "Serializes a message object of type '<WaypointGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_pos) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'goal_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'max_speed) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accuracy_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accuracy_orientation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'timeout))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointGoal>) istream)
  "Deserializes a message object of type '<WaypointGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_pos) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal_yaw) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'max_speed) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accuracy_position) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accuracy_orientation) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timeout) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointGoal>)))
  "Returns string type for a message object of type '<WaypointGoal>"
  "asctec_hl_comm/WaypointGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointGoal)))
  "Returns string type for a message object of type 'WaypointGoal"
  "asctec_hl_comm/WaypointGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointGoal>)))
  "Returns md5sum for a message object of type '<WaypointGoal>"
  "507ec257de0ab6b6c1abb2c69409fbd5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointGoal)))
  "Returns md5sum for a message object of type 'WaypointGoal"
  "507ec257de0ab6b6c1abb2c69409fbd5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointGoal>)))
  "Returns full string definition for message of type '<WaypointGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal~%Header header~%geometry_msgs/Point32   goal_pos~%float32                 goal_yaw~%geometry_msgs/Point32   max_speed~%float32 				accuracy_position        # determines the radius around the goal within the goal is considered as reached~%float32                 accuracy_orientation     # determines the range within the goal orientation is considered as reached, for the heli only yaw~%float32                 timeout                  # timeout in [s] after which flying to the waypoint stops~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointGoal)))
  "Returns full string definition for message of type 'WaypointGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal~%Header header~%geometry_msgs/Point32   goal_pos~%float32                 goal_yaw~%geometry_msgs/Point32   max_speed~%float32 				accuracy_position        # determines the radius around the goal within the goal is considered as reached~%float32                 accuracy_orientation     # determines the range within the goal orientation is considered as reached, for the heli only yaw~%float32                 timeout                  # timeout in [s] after which flying to the waypoint stops~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_pos))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'max_speed))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointGoal
    (cl:cons ':header (header msg))
    (cl:cons ':goal_pos (goal_pos msg))
    (cl:cons ':goal_yaw (goal_yaw msg))
    (cl:cons ':max_speed (max_speed msg))
    (cl:cons ':accuracy_position (accuracy_position msg))
    (cl:cons ':accuracy_orientation (accuracy_orientation msg))
    (cl:cons ':timeout (timeout msg))
))
