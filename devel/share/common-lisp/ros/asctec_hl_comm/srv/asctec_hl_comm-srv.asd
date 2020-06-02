
(cl:in-package :asdf)

(defsystem "asctec_hl_comm-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :asctec_hl_comm-msg
)
  :components ((:file "_package")
    (:file "MavCtrlSrv" :depends-on ("_package_MavCtrlSrv"))
    (:file "_package_MavCtrlSrv" :depends-on ("_package"))
    (:file "Wgs84ToEnu" :depends-on ("_package_Wgs84ToEnu"))
    (:file "_package_Wgs84ToEnu" :depends-on ("_package"))
    (:file "mav_ctrl_motors" :depends-on ("_package_mav_ctrl_motors"))
    (:file "_package_mav_ctrl_motors" :depends-on ("_package"))
  ))