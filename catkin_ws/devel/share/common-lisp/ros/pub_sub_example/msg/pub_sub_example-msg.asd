
(cl:in-package :asdf)

(defsystem "pub_sub_example-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "JointPositions" :depends-on ("_package_JointPositions"))
    (:file "_package_JointPositions" :depends-on ("_package"))
  ))