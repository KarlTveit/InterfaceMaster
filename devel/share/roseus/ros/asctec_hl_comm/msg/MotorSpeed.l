;; Auto-generated. Do not edit!


(when (boundp 'asctec_hl_comm::MotorSpeed)
  (if (not (find-package "ASCTEC_HL_COMM"))
    (make-package "ASCTEC_HL_COMM"))
  (shadow 'MotorSpeed (find-package "ASCTEC_HL_COMM")))
(unless (find-package "ASCTEC_HL_COMM::MOTORSPEED")
  (make-package "ASCTEC_HL_COMM::MOTORSPEED"))

(in-package "ROS")
;;//! \htmlinclude MotorSpeed.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass asctec_hl_comm::MotorSpeed
  :super ros::object
  :slots (_header _motor_speed ))

(defmethod asctec_hl_comm::MotorSpeed
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:motor_speed __motor_speed) (make-array 6 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _motor_speed __motor_speed)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:motor_speed
   (&optional __motor_speed)
   (if __motor_speed (setq _motor_speed __motor_speed)) _motor_speed)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int16[6] _motor_speed
    (* 2    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int16[6] _motor_speed
     (dotimes (i 6)
       (write-word (elt _motor_speed i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int16[6] _motor_speed
   (dotimes (i (length _motor_speed))
     (setf (elt _motor_speed i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     )
   ;;
   self)
  )

(setf (get asctec_hl_comm::MotorSpeed :md5sum-) "3070a95b3ba41b42ea1ab4ed7544fc82")
(setf (get asctec_hl_comm::MotorSpeed :datatype-) "asctec_hl_comm/MotorSpeed")
(setf (get asctec_hl_comm::MotorSpeed :definition-)
      "Header header
int16[6] motor_speed # motor speeds, rxplot doesn't like uint8 :( ...
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



(provide :asctec_hl_comm/MotorSpeed "3070a95b3ba41b42ea1ab4ed7544fc82")


