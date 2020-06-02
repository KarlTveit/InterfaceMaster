;; Auto-generated. Do not edit!


(when (boundp 'asctec_hl_comm::mav_status)
  (if (not (find-package "ASCTEC_HL_COMM"))
    (make-package "ASCTEC_HL_COMM"))
  (shadow 'mav_status (find-package "ASCTEC_HL_COMM")))
(unless (find-package "ASCTEC_HL_COMM::MAV_STATUS")
  (make-package "ASCTEC_HL_COMM::MAV_STATUS"))

(in-package "ROS")
;;//! \htmlinclude mav_status.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass asctec_hl_comm::mav_status
  :super ros::object
  :slots (_header _battery_voltage _flight_mode_ll _state_estimation _position_control _serial_interface_enabled _serial_interface_active _flight_time _cpu_load _motor_status _gps_status _gps_num_satellites _debug1 _debug2 _have_SSDK_parameters _tx_packets _tx_packets_good _rx_packets _rx_packets_good _timesync_offset ))

(defmethod asctec_hl_comm::mav_status
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:battery_voltage __battery_voltage) 0.0)
    ((:flight_mode_ll __flight_mode_ll) "")
    ((:state_estimation __state_estimation) "")
    ((:position_control __position_control) "")
    ((:serial_interface_enabled __serial_interface_enabled) nil)
    ((:serial_interface_active __serial_interface_active) nil)
    ((:flight_time __flight_time) 0.0)
    ((:cpu_load __cpu_load) 0.0)
    ((:motor_status __motor_status) "")
    ((:gps_status __gps_status) "")
    ((:gps_num_satellites __gps_num_satellites) 0)
    ((:debug1 __debug1) 0)
    ((:debug2 __debug2) 0)
    ((:have_SSDK_parameters __have_SSDK_parameters) nil)
    ((:tx_packets __tx_packets) 0)
    ((:tx_packets_good __tx_packets_good) 0)
    ((:rx_packets __rx_packets) 0)
    ((:rx_packets_good __rx_packets_good) 0)
    ((:timesync_offset __timesync_offset) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _battery_voltage (float __battery_voltage))
   (setq _flight_mode_ll (string __flight_mode_ll))
   (setq _state_estimation (string __state_estimation))
   (setq _position_control (string __position_control))
   (setq _serial_interface_enabled __serial_interface_enabled)
   (setq _serial_interface_active __serial_interface_active)
   (setq _flight_time (float __flight_time))
   (setq _cpu_load (float __cpu_load))
   (setq _motor_status (string __motor_status))
   (setq _gps_status (string __gps_status))
   (setq _gps_num_satellites (round __gps_num_satellites))
   (setq _debug1 (round __debug1))
   (setq _debug2 (round __debug2))
   (setq _have_SSDK_parameters __have_SSDK_parameters)
   (setq _tx_packets (round __tx_packets))
   (setq _tx_packets_good (round __tx_packets_good))
   (setq _rx_packets (round __rx_packets))
   (setq _rx_packets_good (round __rx_packets_good))
   (setq _timesync_offset (float __timesync_offset))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:battery_voltage
   (&optional __battery_voltage)
   (if __battery_voltage (setq _battery_voltage __battery_voltage)) _battery_voltage)
  (:flight_mode_ll
   (&optional __flight_mode_ll)
   (if __flight_mode_ll (setq _flight_mode_ll __flight_mode_ll)) _flight_mode_ll)
  (:state_estimation
   (&optional __state_estimation)
   (if __state_estimation (setq _state_estimation __state_estimation)) _state_estimation)
  (:position_control
   (&optional __position_control)
   (if __position_control (setq _position_control __position_control)) _position_control)
  (:serial_interface_enabled
   (&optional __serial_interface_enabled)
   (if __serial_interface_enabled (setq _serial_interface_enabled __serial_interface_enabled)) _serial_interface_enabled)
  (:serial_interface_active
   (&optional __serial_interface_active)
   (if __serial_interface_active (setq _serial_interface_active __serial_interface_active)) _serial_interface_active)
  (:flight_time
   (&optional __flight_time)
   (if __flight_time (setq _flight_time __flight_time)) _flight_time)
  (:cpu_load
   (&optional __cpu_load)
   (if __cpu_load (setq _cpu_load __cpu_load)) _cpu_load)
  (:motor_status
   (&optional __motor_status)
   (if __motor_status (setq _motor_status __motor_status)) _motor_status)
  (:gps_status
   (&optional __gps_status)
   (if __gps_status (setq _gps_status __gps_status)) _gps_status)
  (:gps_num_satellites
   (&optional __gps_num_satellites)
   (if __gps_num_satellites (setq _gps_num_satellites __gps_num_satellites)) _gps_num_satellites)
  (:debug1
   (&optional __debug1)
   (if __debug1 (setq _debug1 __debug1)) _debug1)
  (:debug2
   (&optional __debug2)
   (if __debug2 (setq _debug2 __debug2)) _debug2)
  (:have_SSDK_parameters
   (&optional __have_SSDK_parameters)
   (if __have_SSDK_parameters (setq _have_SSDK_parameters __have_SSDK_parameters)) _have_SSDK_parameters)
  (:tx_packets
   (&optional __tx_packets)
   (if __tx_packets (setq _tx_packets __tx_packets)) _tx_packets)
  (:tx_packets_good
   (&optional __tx_packets_good)
   (if __tx_packets_good (setq _tx_packets_good __tx_packets_good)) _tx_packets_good)
  (:rx_packets
   (&optional __rx_packets)
   (if __rx_packets (setq _rx_packets __rx_packets)) _rx_packets)
  (:rx_packets_good
   (&optional __rx_packets_good)
   (if __rx_packets_good (setq _rx_packets_good __rx_packets_good)) _rx_packets_good)
  (:timesync_offset
   (&optional __timesync_offset)
   (if __timesync_offset (setq _timesync_offset __timesync_offset)) _timesync_offset)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _battery_voltage
    4
    ;; string _flight_mode_ll
    4 (length _flight_mode_ll)
    ;; string _state_estimation
    4 (length _state_estimation)
    ;; string _position_control
    4 (length _position_control)
    ;; bool _serial_interface_enabled
    1
    ;; bool _serial_interface_active
    1
    ;; float32 _flight_time
    4
    ;; float32 _cpu_load
    4
    ;; string _motor_status
    4 (length _motor_status)
    ;; string _gps_status
    4 (length _gps_status)
    ;; int32 _gps_num_satellites
    4
    ;; int32 _debug1
    4
    ;; int32 _debug2
    4
    ;; bool _have_SSDK_parameters
    1
    ;; uint32 _tx_packets
    4
    ;; uint32 _tx_packets_good
    4
    ;; uint32 _rx_packets
    4
    ;; uint32 _rx_packets_good
    4
    ;; float32 _timesync_offset
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _battery_voltage
       (sys::poke _battery_voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _flight_mode_ll
       (write-long (length _flight_mode_ll) s) (princ _flight_mode_ll s)
     ;; string _state_estimation
       (write-long (length _state_estimation) s) (princ _state_estimation s)
     ;; string _position_control
       (write-long (length _position_control) s) (princ _position_control s)
     ;; bool _serial_interface_enabled
       (if _serial_interface_enabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _serial_interface_active
       (if _serial_interface_active (write-byte -1 s) (write-byte 0 s))
     ;; float32 _flight_time
       (sys::poke _flight_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cpu_load
       (sys::poke _cpu_load (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _motor_status
       (write-long (length _motor_status) s) (princ _motor_status s)
     ;; string _gps_status
       (write-long (length _gps_status) s) (princ _gps_status s)
     ;; int32 _gps_num_satellites
       (write-long _gps_num_satellites s)
     ;; int32 _debug1
       (write-long _debug1 s)
     ;; int32 _debug2
       (write-long _debug2 s)
     ;; bool _have_SSDK_parameters
       (if _have_SSDK_parameters (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _tx_packets
       (write-long _tx_packets s)
     ;; uint32 _tx_packets_good
       (write-long _tx_packets_good s)
     ;; uint32 _rx_packets
       (write-long _rx_packets s)
     ;; uint32 _rx_packets_good
       (write-long _rx_packets_good s)
     ;; float32 _timesync_offset
       (sys::poke _timesync_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _battery_voltage
     (setq _battery_voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _flight_mode_ll
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _flight_mode_ll (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _state_estimation
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state_estimation (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _position_control
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _position_control (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _serial_interface_enabled
     (setq _serial_interface_enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _serial_interface_active
     (setq _serial_interface_active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _flight_time
     (setq _flight_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cpu_load
     (setq _cpu_load (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _motor_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _motor_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _gps_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gps_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _gps_num_satellites
     (setq _gps_num_satellites (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _debug1
     (setq _debug1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _debug2
     (setq _debug2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _have_SSDK_parameters
     (setq _have_SSDK_parameters (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _tx_packets
     (setq _tx_packets (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _tx_packets_good
     (setq _tx_packets_good (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _rx_packets
     (setq _rx_packets (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _rx_packets_good
     (setq _rx_packets_good (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _timesync_offset
     (setq _timesync_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get asctec_hl_comm::mav_status :md5sum-) "f975cbdf223868931f194323c62d7be5")
(setf (get asctec_hl_comm::mav_status :datatype-) "asctec_hl_comm/mav_status")
(setf (get asctec_hl_comm::mav_status :definition-)
      "Header header

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

")



(provide :asctec_hl_comm/mav_status "f975cbdf223868931f194323c62d7be5")


