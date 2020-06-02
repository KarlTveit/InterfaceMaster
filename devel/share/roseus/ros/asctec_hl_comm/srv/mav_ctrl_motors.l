;; Auto-generated. Do not edit!


(when (boundp 'asctec_hl_comm::mav_ctrl_motors)
  (if (not (find-package "ASCTEC_HL_COMM"))
    (make-package "ASCTEC_HL_COMM"))
  (shadow 'mav_ctrl_motors (find-package "ASCTEC_HL_COMM")))
(unless (find-package "ASCTEC_HL_COMM::MAV_CTRL_MOTORS")
  (make-package "ASCTEC_HL_COMM::MAV_CTRL_MOTORS"))
(unless (find-package "ASCTEC_HL_COMM::MAV_CTRL_MOTORSREQUEST")
  (make-package "ASCTEC_HL_COMM::MAV_CTRL_MOTORSREQUEST"))
(unless (find-package "ASCTEC_HL_COMM::MAV_CTRL_MOTORSRESPONSE")
  (make-package "ASCTEC_HL_COMM::MAV_CTRL_MOTORSRESPONSE"))

(in-package "ROS")





(defclass asctec_hl_comm::mav_ctrl_motorsRequest
  :super ros::object
  :slots (_startMotors ))

(defmethod asctec_hl_comm::mav_ctrl_motorsRequest
  (:init
   (&key
    ((:startMotors __startMotors) nil)
    )
   (send-super :init)
   (setq _startMotors __startMotors)
   self)
  (:startMotors
   (&optional __startMotors)
   (if __startMotors (setq _startMotors __startMotors)) _startMotors)
  (:serialization-length
   ()
   (+
    ;; bool _startMotors
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _startMotors
       (if _startMotors (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _startMotors
     (setq _startMotors (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass asctec_hl_comm::mav_ctrl_motorsResponse
  :super ros::object
  :slots (_motorsRunning ))

(defmethod asctec_hl_comm::mav_ctrl_motorsResponse
  (:init
   (&key
    ((:motorsRunning __motorsRunning) nil)
    )
   (send-super :init)
   (setq _motorsRunning __motorsRunning)
   self)
  (:motorsRunning
   (&optional __motorsRunning)
   (if __motorsRunning (setq _motorsRunning __motorsRunning)) _motorsRunning)
  (:serialization-length
   ()
   (+
    ;; bool _motorsRunning
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _motorsRunning
       (if _motorsRunning (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _motorsRunning
     (setq _motorsRunning (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass asctec_hl_comm::mav_ctrl_motors
  :super ros::object
  :slots ())

(setf (get asctec_hl_comm::mav_ctrl_motors :md5sum-) "e005c4128d496dadc787b05eb5384496")
(setf (get asctec_hl_comm::mav_ctrl_motors :datatype-) "asctec_hl_comm/mav_ctrl_motors")
(setf (get asctec_hl_comm::mav_ctrl_motors :request) asctec_hl_comm::mav_ctrl_motorsRequest)
(setf (get asctec_hl_comm::mav_ctrl_motors :response) asctec_hl_comm::mav_ctrl_motorsResponse)

(defmethod asctec_hl_comm::mav_ctrl_motorsRequest
  (:response () (instance asctec_hl_comm::mav_ctrl_motorsResponse :init)))

(setf (get asctec_hl_comm::mav_ctrl_motorsRequest :md5sum-) "e005c4128d496dadc787b05eb5384496")
(setf (get asctec_hl_comm::mav_ctrl_motorsRequest :datatype-) "asctec_hl_comm/mav_ctrl_motorsRequest")
(setf (get asctec_hl_comm::mav_ctrl_motorsRequest :definition-)
      "bool      startMotors
---
bool      motorsRunning

")

(setf (get asctec_hl_comm::mav_ctrl_motorsResponse :md5sum-) "e005c4128d496dadc787b05eb5384496")
(setf (get asctec_hl_comm::mav_ctrl_motorsResponse :datatype-) "asctec_hl_comm/mav_ctrl_motorsResponse")
(setf (get asctec_hl_comm::mav_ctrl_motorsResponse :definition-)
      "bool      startMotors
---
bool      motorsRunning

")



(provide :asctec_hl_comm/mav_ctrl_motors "e005c4128d496dadc787b05eb5384496")


