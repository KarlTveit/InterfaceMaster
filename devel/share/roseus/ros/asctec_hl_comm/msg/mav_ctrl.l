;; Auto-generated. Do not edit!


(when (boundp 'asctec_hl_comm::mav_ctrl)
  (if (not (find-package "ASCTEC_HL_COMM"))
    (make-package "ASCTEC_HL_COMM"))
  (shadow 'mav_ctrl (find-package "ASCTEC_HL_COMM")))
(unless (find-package "ASCTEC_HL_COMM::MAV_CTRL")
  (make-package "ASCTEC_HL_COMM::MAV_CTRL"))

(in-package "ROS")
;;//! \htmlinclude mav_ctrl.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*ACCELERATION*" (find-package "ASCTEC_HL_COMM::MAV_CTRL"))
(shadow '*ACCELERATION* (find-package "ASCTEC_HL_COMM::MAV_CTRL"))
(defconstant asctec_hl_comm::mav_ctrl::*ACCELERATION* 1)
(intern "*VELOCITY*" (find-package "ASCTEC_HL_COMM::MAV_CTRL"))
(shadow '*VELOCITY* (find-package "ASCTEC_HL_COMM::MAV_CTRL"))
(defconstant asctec_hl_comm::mav_ctrl::*VELOCITY* 2)
(intern "*POSITION*" (find-package "ASCTEC_HL_COMM::MAV_CTRL"))
(shadow '*POSITION* (find-package "ASCTEC_HL_COMM::MAV_CTRL"))
(defconstant asctec_hl_comm::mav_ctrl::*POSITION* 3)
(intern "*VELOCITY_BODY*" (find-package "ASCTEC_HL_COMM::MAV_CTRL"))
(shadow '*VELOCITY_BODY* (find-package "ASCTEC_HL_COMM::MAV_CTRL"))
(defconstant asctec_hl_comm::mav_ctrl::*VELOCITY_BODY* 4)
(intern "*POSITION_BODY*" (find-package "ASCTEC_HL_COMM::MAV_CTRL"))
(shadow '*POSITION_BODY* (find-package "ASCTEC_HL_COMM::MAV_CTRL"))
(defconstant asctec_hl_comm::mav_ctrl::*POSITION_BODY* 5)
(defclass asctec_hl_comm::mav_ctrl
  :super ros::object
  :slots (_header _type _x _y _z _yaw _v_max_xy _v_max_z ))

(defmethod asctec_hl_comm::mav_ctrl
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:yaw __yaw) 0.0)
    ((:v_max_xy __v_max_xy) 0.0)
    ((:v_max_z __v_max_z) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (round __type))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _yaw (float __yaw))
   (setq _v_max_xy (float __v_max_xy))
   (setq _v_max_z (float __v_max_z))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:v_max_xy
   (&optional __v_max_xy)
   (if __v_max_xy (setq _v_max_xy __v_max_xy)) _v_max_xy)
  (:v_max_z
   (&optional __v_max_z)
   (if __v_max_z (setq _v_max_z __v_max_z)) _v_max_z)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _type
    1
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _yaw
    4
    ;; float32 _v_max_xy
    4
    ;; float32 _v_max_z
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _type
       (write-byte _type s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v_max_xy
       (sys::poke _v_max_xy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v_max_z
       (sys::poke _v_max_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v_max_xy
     (setq _v_max_xy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v_max_z
     (setq _v_max_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get asctec_hl_comm::mav_ctrl :md5sum-) "845e0a830a06ad942cc0b1907c31bc38")
(setf (get asctec_hl_comm::mav_ctrl :datatype-) "asctec_hl_comm/mav_ctrl")
(setf (get asctec_hl_comm::mav_ctrl :definition-)
      "Header header

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



(provide :asctec_hl_comm/mav_ctrl "845e0a830a06ad942cc0b1907c31bc38")


