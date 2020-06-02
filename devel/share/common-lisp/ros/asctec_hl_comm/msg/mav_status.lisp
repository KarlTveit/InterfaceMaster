; Auto-generated. Do not edit!


(cl:in-package asctec_hl_comm-msg)


;//! \htmlinclude mav_status.msg.html

(cl:defclass <mav_status> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (battery_voltage
    :reader battery_voltage
    :initarg :battery_voltage
    :type cl:float
    :initform 0.0)
   (flight_mode_ll
    :reader flight_mode_ll
    :initarg :flight_mode_ll
    :type cl:string
    :initform "")
   (state_estimation
    :reader state_estimation
    :initarg :state_estimation
    :type cl:string
    :initform "")
   (position_control
    :reader position_control
    :initarg :position_control
    :type cl:string
    :initform "")
   (serial_interface_enabled
    :reader serial_interface_enabled
    :initarg :serial_interface_enabled
    :type cl:boolean
    :initform cl:nil)
   (serial_interface_active
    :reader serial_interface_active
    :initarg :serial_interface_active
    :type cl:boolean
    :initform cl:nil)
   (flight_time
    :reader flight_time
    :initarg :flight_time
    :type cl:float
    :initform 0.0)
   (cpu_load
    :reader cpu_load
    :initarg :cpu_load
    :type cl:float
    :initform 0.0)
   (motor_status
    :reader motor_status
    :initarg :motor_status
    :type cl:string
    :initform "")
   (gps_status
    :reader gps_status
    :initarg :gps_status
    :type cl:string
    :initform "")
   (gps_num_satellites
    :reader gps_num_satellites
    :initarg :gps_num_satellites
    :type cl:integer
    :initform 0)
   (debug1
    :reader debug1
    :initarg :debug1
    :type cl:integer
    :initform 0)
   (debug2
    :reader debug2
    :initarg :debug2
    :type cl:integer
    :initform 0)
   (have_SSDK_parameters
    :reader have_SSDK_parameters
    :initarg :have_SSDK_parameters
    :type cl:boolean
    :initform cl:nil)
   (tx_packets
    :reader tx_packets
    :initarg :tx_packets
    :type cl:integer
    :initform 0)
   (tx_packets_good
    :reader tx_packets_good
    :initarg :tx_packets_good
    :type cl:integer
    :initform 0)
   (rx_packets
    :reader rx_packets
    :initarg :rx_packets
    :type cl:integer
    :initform 0)
   (rx_packets_good
    :reader rx_packets_good
    :initarg :rx_packets_good
    :type cl:integer
    :initform 0)
   (timesync_offset
    :reader timesync_offset
    :initarg :timesync_offset
    :type cl:float
    :initform 0.0))
)

(cl:defclass mav_status (<mav_status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <mav_status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'mav_status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name asctec_hl_comm-msg:<mav_status> is deprecated: use asctec_hl_comm-msg:mav_status instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <mav_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:header-val is deprecated.  Use asctec_hl_comm-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'battery_voltage-val :lambda-list '(m))
(cl:defmethod battery_voltage-val ((m <mav_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:battery_voltage-val is deprecated.  Use asctec_hl_comm-msg:battery_voltage instead.")
  (battery_voltage m))

(cl:ensure-generic-function 'flight_mode_ll-val :lambda-list '(m))
(cl:defmethod flight_mode_ll-val ((m <mav_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:flight_mode_ll-val is deprecated.  Use asctec_hl_comm-msg:flight_mode_ll instead.")
  (flight_mode_ll m))

(cl:ensure-generic-function 'state_estimation-val :lambda-list '(m))
(cl:defmethod state_estimation-val ((m <mav_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:state_estimation-val is deprecated.  Use asctec_hl_comm-msg:state_estimation instead.")
  (state_estimation m))

(cl:ensure-generic-function 'position_control-val :lambda-list '(m))
(cl:defmethod position_control-val ((m <mav_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:position_control-val is deprecated.  Use asctec_hl_comm-msg:position_control instead.")
  (position_control m))

(cl:ensure-generic-function 'serial_interface_enabled-val :lambda-list '(m))
(cl:defmethod serial_interface_enabled-val ((m <mav_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:serial_interface_enabled-val is deprecated.  Use asctec_hl_comm-msg:serial_interface_enabled instead.")
  (serial_interface_enabled m))

(cl:ensure-generic-function 'serial_interface_active-val :lambda-list '(m))
(cl:defmethod serial_interface_active-val ((m <mav_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:serial_interface_active-val is deprecated.  Use asctec_hl_comm-msg:serial_interface_active instead.")
  (serial_interface_active m))

(cl:ensure-generic-function 'flight_time-val :lambda-list '(m))
(cl:defmethod flight_time-val ((m <mav_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:flight_time-val is deprecated.  Use asctec_hl_comm-msg:flight_time instead.")
  (flight_time m))

(cl:ensure-generic-function 'cpu_load-val :lambda-list '(m))
(cl:defmethod cpu_load-val ((m <mav_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:cpu_load-val is deprecated.  Use asctec_hl_comm-msg:cpu_load instead.")
  (cpu_load m))

(cl:ensure-generic-function 'motor_status-val :lambda-list '(m))
(cl:defmethod motor_status-val ((m <mav_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:motor_status-val is deprecated.  Use asctec_hl_comm-msg:motor_status instead.")
  (motor_status m))

(cl:ensure-generic-function 'gps_status-val :lambda-list '(m))
(cl:defmethod gps_status-val ((m <mav_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:gps_status-val is deprecated.  Use asctec_hl_comm-msg:gps_status instead.")
  (gps_status m))

(cl:ensure-generic-function 'gps_num_satellites-val :lambda-list '(m))
(cl:defmethod gps_num_satellites-val ((m <mav_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:gps_num_satellites-val is deprecated.  Use asctec_hl_comm-msg:gps_num_satellites instead.")
  (gps_num_satellites m))

(cl:ensure-generic-function 'debug1-val :lambda-list '(m))
(cl:defmethod debug1-val ((m <mav_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:debug1-val is deprecated.  Use asctec_hl_comm-msg:debug1 instead.")
  (debug1 m))

(cl:ensure-generic-function 'debug2-val :lambda-list '(m))
(cl:defmethod debug2-val ((m <mav_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:debug2-val is deprecated.  Use asctec_hl_comm-msg:debug2 instead.")
  (debug2 m))

(cl:ensure-generic-function 'have_SSDK_parameters-val :lambda-list '(m))
(cl:defmethod have_SSDK_parameters-val ((m <mav_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:have_SSDK_parameters-val is deprecated.  Use asctec_hl_comm-msg:have_SSDK_parameters instead.")
  (have_SSDK_parameters m))

(cl:ensure-generic-function 'tx_packets-val :lambda-list '(m))
(cl:defmethod tx_packets-val ((m <mav_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:tx_packets-val is deprecated.  Use asctec_hl_comm-msg:tx_packets instead.")
  (tx_packets m))

(cl:ensure-generic-function 'tx_packets_good-val :lambda-list '(m))
(cl:defmethod tx_packets_good-val ((m <mav_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:tx_packets_good-val is deprecated.  Use asctec_hl_comm-msg:tx_packets_good instead.")
  (tx_packets_good m))

(cl:ensure-generic-function 'rx_packets-val :lambda-list '(m))
(cl:defmethod rx_packets-val ((m <mav_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:rx_packets-val is deprecated.  Use asctec_hl_comm-msg:rx_packets instead.")
  (rx_packets m))

(cl:ensure-generic-function 'rx_packets_good-val :lambda-list '(m))
(cl:defmethod rx_packets_good-val ((m <mav_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:rx_packets_good-val is deprecated.  Use asctec_hl_comm-msg:rx_packets_good instead.")
  (rx_packets_good m))

(cl:ensure-generic-function 'timesync_offset-val :lambda-list '(m))
(cl:defmethod timesync_offset-val ((m <mav_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader asctec_hl_comm-msg:timesync_offset-val is deprecated.  Use asctec_hl_comm-msg:timesync_offset instead.")
  (timesync_offset m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <mav_status>) ostream)
  "Serializes a message object of type '<mav_status>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'battery_voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'flight_mode_ll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'flight_mode_ll))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state_estimation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state_estimation))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'position_control))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'position_control))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'serial_interface_enabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'serial_interface_active) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'flight_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cpu_load))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'motor_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'motor_status))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gps_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gps_status))
  (cl:let* ((signed (cl:slot-value msg 'gps_num_satellites)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'debug1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'debug2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'have_SSDK_parameters) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tx_packets)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tx_packets)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tx_packets)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tx_packets)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tx_packets_good)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tx_packets_good)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tx_packets_good)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tx_packets_good)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rx_packets)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rx_packets)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'rx_packets)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'rx_packets)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rx_packets_good)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rx_packets_good)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'rx_packets_good)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'rx_packets_good)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'timesync_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <mav_status>) istream)
  "Deserializes a message object of type '<mav_status>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery_voltage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'flight_mode_ll) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'flight_mode_ll) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state_estimation) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state_estimation) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position_control) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'position_control) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'serial_interface_enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'serial_interface_active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'flight_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cpu_load) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'motor_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gps_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gps_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gps_num_satellites) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'debug1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'debug2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'have_SSDK_parameters) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tx_packets)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tx_packets)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tx_packets)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tx_packets)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tx_packets_good)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tx_packets_good)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tx_packets_good)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tx_packets_good)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rx_packets)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rx_packets)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'rx_packets)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'rx_packets)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rx_packets_good)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'rx_packets_good)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'rx_packets_good)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'rx_packets_good)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timesync_offset) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<mav_status>)))
  "Returns string type for a message object of type '<mav_status>"
  "asctec_hl_comm/mav_status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'mav_status)))
  "Returns string type for a message object of type 'mav_status"
  "asctec_hl_comm/mav_status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<mav_status>)))
  "Returns md5sum for a message object of type '<mav_status>"
  "f975cbdf223868931f194323c62d7be5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'mav_status)))
  "Returns md5sum for a message object of type 'mav_status"
  "f975cbdf223868931f194323c62d7be5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<mav_status>)))
  "Returns full string definition for message of type '<mav_status>"
  (cl:format cl:nil "Header header~%~%float32     battery_voltage~%string      flight_mode_ll~%string      state_estimation~%string      position_control~%bool        serial_interface_enabled~%bool        serial_interface_active~%float32     flight_time~%float32     cpu_load~%~%string      motor_status~%~%string      gps_status~%int32       gps_num_satellites ~%~%int32       debug1~%int32       debug2~%~%bool        have_SSDK_parameters~%~%uint32      tx_packets~%uint32      tx_packets_good~%uint32      rx_packets~%uint32      rx_packets_good~%~%float32     timesync_offset~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'mav_status)))
  "Returns full string definition for message of type 'mav_status"
  (cl:format cl:nil "Header header~%~%float32     battery_voltage~%string      flight_mode_ll~%string      state_estimation~%string      position_control~%bool        serial_interface_enabled~%bool        serial_interface_active~%float32     flight_time~%float32     cpu_load~%~%string      motor_status~%~%string      gps_status~%int32       gps_num_satellites ~%~%int32       debug1~%int32       debug2~%~%bool        have_SSDK_parameters~%~%uint32      tx_packets~%uint32      tx_packets_good~%uint32      rx_packets~%uint32      rx_packets_good~%~%float32     timesync_offset~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <mav_status>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:length (cl:slot-value msg 'flight_mode_ll))
     4 (cl:length (cl:slot-value msg 'state_estimation))
     4 (cl:length (cl:slot-value msg 'position_control))
     1
     1
     4
     4
     4 (cl:length (cl:slot-value msg 'motor_status))
     4 (cl:length (cl:slot-value msg 'gps_status))
     4
     4
     4
     1
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <mav_status>))
  "Converts a ROS message object to a list"
  (cl:list 'mav_status
    (cl:cons ':header (header msg))
    (cl:cons ':battery_voltage (battery_voltage msg))
    (cl:cons ':flight_mode_ll (flight_mode_ll msg))
    (cl:cons ':state_estimation (state_estimation msg))
    (cl:cons ':position_control (position_control msg))
    (cl:cons ':serial_interface_enabled (serial_interface_enabled msg))
    (cl:cons ':serial_interface_active (serial_interface_active msg))
    (cl:cons ':flight_time (flight_time msg))
    (cl:cons ':cpu_load (cpu_load msg))
    (cl:cons ':motor_status (motor_status msg))
    (cl:cons ':gps_status (gps_status msg))
    (cl:cons ':gps_num_satellites (gps_num_satellites msg))
    (cl:cons ':debug1 (debug1 msg))
    (cl:cons ':debug2 (debug2 msg))
    (cl:cons ':have_SSDK_parameters (have_SSDK_parameters msg))
    (cl:cons ':tx_packets (tx_packets msg))
    (cl:cons ':tx_packets_good (tx_packets_good msg))
    (cl:cons ':rx_packets (rx_packets msg))
    (cl:cons ':rx_packets_good (rx_packets_good msg))
    (cl:cons ':timesync_offset (timesync_offset msg))
))
