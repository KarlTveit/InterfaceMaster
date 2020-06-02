;; Auto-generated. Do not edit!


(when (boundp 'asctec_hl_comm::MavCtrlSrv)
  (if (not (find-package "ASCTEC_HL_COMM"))
    (make-package "ASCTEC_HL_COMM"))
  (shadow 'MavCtrlSrv (find-package "ASCTEC_HL_COMM")))
(unless (find-package "ASCTEC_HL_COMM::MAVCTRLSRV")
  (make-package "ASCTEC_HL_COMM::MAVCTRLSRV"))
(unless (find-package "ASCTEC_HL_COMM::MAVCTRLSRVREQUEST")
  (make-package "ASCTEC_HL_COMM::MAVCTRLSRVREQUEST"))
(unless (find-package "ASCTEC_HL_COMM::MAVCTRLSRVRESPONSE")
  (make-package "ASCTEC_HL_COMM::MAVCTRLSRVRESPONSE"))

(in-package "ROS")





(defclass asctec_hl_comm::MavCtrlSrvRequest
  :super ros::object
  :slots (_ctrl ))

(defmethod asctec_hl_comm::MavCtrlSrvRequest
  (:init
   (&key
    ((:ctrl __ctrl) (instance asctec_hl_comm::mav_ctrl :init))
    )
   (send-super :init)
   (setq _ctrl __ctrl)
   self)
  (:ctrl
   (&rest __ctrl)
   (if (keywordp (car __ctrl))
       (send* _ctrl __ctrl)
     (progn
       (if __ctrl (setq _ctrl (car __ctrl)))
       _ctrl)))
  (:serialization-length
   ()
   (+
    ;; asctec_hl_comm/mav_ctrl _ctrl
    (send _ctrl :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; asctec_hl_comm/mav_ctrl _ctrl
       (send _ctrl :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; asctec_hl_comm/mav_ctrl _ctrl
     (send _ctrl :deserialize buf ptr-) (incf ptr- (send _ctrl :serialization-length))
   ;;
   self)
  )

(defclass asctec_hl_comm::MavCtrlSrvResponse
  :super ros::object
  :slots (_ctrl_result ))

(defmethod asctec_hl_comm::MavCtrlSrvResponse
  (:init
   (&key
    ((:ctrl_result __ctrl_result) (instance asctec_hl_comm::mav_ctrl :init))
    )
   (send-super :init)
   (setq _ctrl_result __ctrl_result)
   self)
  (:ctrl_result
   (&rest __ctrl_result)
   (if (keywordp (car __ctrl_result))
       (send* _ctrl_result __ctrl_result)
     (progn
       (if __ctrl_result (setq _ctrl_result (car __ctrl_result)))
       _ctrl_result)))
  (:serialization-length
   ()
   (+
    ;; asctec_hl_comm/mav_ctrl _ctrl_result
    (send _ctrl_result :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; asctec_hl_comm/mav_ctrl _ctrl_result
       (send _ctrl_result :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; asctec_hl_comm/mav_ctrl _ctrl_result
     (send _ctrl_result :deserialize buf ptr-) (incf ptr- (send _ctrl_result :serialization-length))
   ;;
   self)
  )

(defclass asctec_hl_comm::MavCtrlSrv
  :super ros::object
  :slots ())

(setf (get asctec_hl_comm::MavCtrlSrv :md5sum-) "ed4ced4e777c3a84e6602a79aaabcdfe")
(setf (get asctec_hl_comm::MavCtrlSrv :datatype-) "asctec_hl_comm/MavCtrlSrv")
(setf (get asctec_hl_comm::MavCtrlSrv :request) asctec_hl_comm::MavCtrlSrvRequest)
(setf (get asctec_hl_comm::MavCtrlSrv :response) asctec_hl_comm::MavCtrlSrvResponse)

(defmethod asctec_hl_comm::MavCtrlSrvRequest
  (:response () (instance asctec_hl_comm::MavCtrlSrvResponse :init)))

(setf (get asctec_hl_comm::MavCtrlSrvRequest :md5sum-) "ed4ced4e777c3a84e6602a79aaabcdfe")
(setf (get asctec_hl_comm::MavCtrlSrvRequest :datatype-) "asctec_hl_comm/MavCtrlSrvRequest")
(setf (get asctec_hl_comm::MavCtrlSrvRequest :definition-)
      "mav_ctrl ctrl

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
---
mav_ctrl ctrl_result

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
")

(setf (get asctec_hl_comm::MavCtrlSrvResponse :md5sum-) "ed4ced4e777c3a84e6602a79aaabcdfe")
(setf (get asctec_hl_comm::MavCtrlSrvResponse :datatype-) "asctec_hl_comm/MavCtrlSrvResponse")
(setf (get asctec_hl_comm::MavCtrlSrvResponse :definition-)
      "mav_ctrl ctrl

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
---
mav_ctrl ctrl_result

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
")



(provide :asctec_hl_comm/MavCtrlSrv "ed4ced4e777c3a84e6602a79aaabcdfe")


