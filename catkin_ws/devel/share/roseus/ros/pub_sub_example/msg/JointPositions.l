;; Auto-generated. Do not edit!


(when (boundp 'pub_sub_example::JointPositions)
  (if (not (find-package "PUB_SUB_EXAMPLE"))
    (make-package "PUB_SUB_EXAMPLE"))
  (shadow 'JointPositions (find-package "PUB_SUB_EXAMPLE")))
(unless (find-package "PUB_SUB_EXAMPLE::JOINTPOSITIONS")
  (make-package "PUB_SUB_EXAMPLE::JOINTPOSITIONS"))

(in-package "ROS")
;;//! \htmlinclude JointPositions.msg.html


(defclass pub_sub_example::JointPositions
  :super ros::object
  :slots (_joint_positions ))

(defmethod pub_sub_example::JointPositions
  (:init
   (&key
    ((:joint_positions __joint_positions) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint_positions __joint_positions)
   self)
  (:joint_positions
   (&optional __joint_positions)
   (if __joint_positions (setq _joint_positions __joint_positions)) _joint_positions)
  (:serialization-length
   ()
   (+
    ;; float64[] _joint_positions
    (* 8    (length _joint_positions)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _joint_positions
     (write-long (length _joint_positions) s)
     (dotimes (i (length _joint_positions))
       (sys::poke (elt _joint_positions i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _joint_positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_positions (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_positions i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get pub_sub_example::JointPositions :md5sum-) "a286ff40b196573b9ebf3999a2f8d438")
(setf (get pub_sub_example::JointPositions :datatype-) "pub_sub_example/JointPositions")
(setf (get pub_sub_example::JointPositions :definition-)
      "float64[] joint_positions
")



(provide :pub_sub_example/JointPositions "a286ff40b196573b9ebf3999a2f8d438")


