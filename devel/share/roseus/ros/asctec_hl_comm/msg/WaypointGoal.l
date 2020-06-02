;; Auto-generated. Do not edit!


(when (boundp 'asctec_hl_comm::WaypointGoal)
  (if (not (find-package "ASCTEC_HL_COMM"))
    (make-package "ASCTEC_HL_COMM"))
  (shadow 'WaypointGoal (find-package "ASCTEC_HL_COMM")))
(unless (find-package "ASCTEC_HL_COMM::WAYPOINTGOAL")
  (make-package "ASCTEC_HL_COMM::WAYPOINTGOAL"))

(in-package "ROS")
;;//! \htmlinclude WaypointGoal.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass asctec_hl_comm::WaypointGoal
  :super ros::object
  :slots (_header _goal_pos _goal_yaw _max_speed _accuracy_position _accuracy_orientation _timeout ))

(defmethod asctec_hl_comm::WaypointGoal
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:goal_pos __goal_pos) (instance geometry_msgs::Point32 :init))
    ((:goal_yaw __goal_yaw) 0.0)
    ((:max_speed __max_speed) (instance geometry_msgs::Point32 :init))
    ((:accuracy_position __accuracy_position) 0.0)
    ((:accuracy_orientation __accuracy_orientation) 0.0)
    ((:timeout __timeout) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _goal_pos __goal_pos)
   (setq _goal_yaw (float __goal_yaw))
   (setq _max_speed __max_speed)
   (setq _accuracy_position (float __accuracy_position))
   (setq _accuracy_orientation (float __accuracy_orientation))
   (setq _timeout (float __timeout))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:goal_pos
   (&rest __goal_pos)
   (if (keywordp (car __goal_pos))
       (send* _goal_pos __goal_pos)
     (progn
       (if __goal_pos (setq _goal_pos (car __goal_pos)))
       _goal_pos)))
  (:goal_yaw
   (&optional __goal_yaw)
   (if __goal_yaw (setq _goal_yaw __goal_yaw)) _goal_yaw)
  (:max_speed
   (&rest __max_speed)
   (if (keywordp (car __max_speed))
       (send* _max_speed __max_speed)
     (progn
       (if __max_speed (setq _max_speed (car __max_speed)))
       _max_speed)))
  (:accuracy_position
   (&optional __accuracy_position)
   (if __accuracy_position (setq _accuracy_position __accuracy_position)) _accuracy_position)
  (:accuracy_orientation
   (&optional __accuracy_orientation)
   (if __accuracy_orientation (setq _accuracy_orientation __accuracy_orientation)) _accuracy_orientation)
  (:timeout
   (&optional __timeout)
   (if __timeout (setq _timeout __timeout)) _timeout)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Point32 _goal_pos
    (send _goal_pos :serialization-length)
    ;; float32 _goal_yaw
    4
    ;; geometry_msgs/Point32 _max_speed
    (send _max_speed :serialization-length)
    ;; float32 _accuracy_position
    4
    ;; float32 _accuracy_orientation
    4
    ;; float32 _timeout
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Point32 _goal_pos
       (send _goal_pos :serialize s)
     ;; float32 _goal_yaw
       (sys::poke _goal_yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Point32 _max_speed
       (send _max_speed :serialize s)
     ;; float32 _accuracy_position
       (sys::poke _accuracy_position (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accuracy_orientation
       (sys::poke _accuracy_orientation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _timeout
       (sys::poke _timeout (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Point32 _goal_pos
     (send _goal_pos :deserialize buf ptr-) (incf ptr- (send _goal_pos :serialization-length))
   ;; float32 _goal_yaw
     (setq _goal_yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Point32 _max_speed
     (send _max_speed :deserialize buf ptr-) (incf ptr- (send _max_speed :serialization-length))
   ;; float32 _accuracy_position
     (setq _accuracy_position (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accuracy_orientation
     (setq _accuracy_orientation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _timeout
     (setq _timeout (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get asctec_hl_comm::WaypointGoal :md5sum-) "507ec257de0ab6b6c1abb2c69409fbd5")
(setf (get asctec_hl_comm::WaypointGoal :datatype-) "asctec_hl_comm/WaypointGoal")
(setf (get asctec_hl_comm::WaypointGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#goal
Header header
geometry_msgs/Point32   goal_pos
float32                 goal_yaw
geometry_msgs/Point32   max_speed
float32 				accuracy_position        # determines the radius around the goal within the goal is considered as reached
float32                 accuracy_orientation     # determines the range within the goal orientation is considered as reached, for the heli only yaw
float32                 timeout                  # timeout in [s] after which flying to the waypoint stops

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
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :asctec_hl_comm/WaypointGoal "507ec257de0ab6b6c1abb2c69409fbd5")


