; Auto-generated. Do not edit!


(cl:in-package pub_sub_example-msg)


;//! \htmlinclude JointPositions.msg.html

(cl:defclass <JointPositions> (roslisp-msg-protocol:ros-message)
  ((joint_positions
    :reader joint_positions
    :initarg :joint_positions
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass JointPositions (<JointPositions>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointPositions>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointPositions)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pub_sub_example-msg:<JointPositions> is deprecated: use pub_sub_example-msg:JointPositions instead.")))

(cl:ensure-generic-function 'joint_positions-val :lambda-list '(m))
(cl:defmethod joint_positions-val ((m <JointPositions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pub_sub_example-msg:joint_positions-val is deprecated.  Use pub_sub_example-msg:joint_positions instead.")
  (joint_positions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointPositions>) ostream)
  "Serializes a message object of type '<JointPositions>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_positions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'joint_positions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointPositions>) istream)
  "Deserializes a message object of type '<JointPositions>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_positions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_positions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointPositions>)))
  "Returns string type for a message object of type '<JointPositions>"
  "pub_sub_example/JointPositions")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointPositions)))
  "Returns string type for a message object of type 'JointPositions"
  "pub_sub_example/JointPositions")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointPositions>)))
  "Returns md5sum for a message object of type '<JointPositions>"
  "a286ff40b196573b9ebf3999a2f8d438")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointPositions)))
  "Returns md5sum for a message object of type 'JointPositions"
  "a286ff40b196573b9ebf3999a2f8d438")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointPositions>)))
  "Returns full string definition for message of type '<JointPositions>"
  (cl:format cl:nil "float64[] joint_positions~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointPositions)))
  "Returns full string definition for message of type 'JointPositions"
  (cl:format cl:nil "float64[] joint_positions~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointPositions>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_positions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointPositions>))
  "Converts a ROS message object to a list"
  (cl:list 'JointPositions
    (cl:cons ':joint_positions (joint_positions msg))
))
