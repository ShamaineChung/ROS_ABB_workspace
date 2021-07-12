; Auto-generated. Do not edit!


(cl:in-package lcsr_nettools-msg)


;//! \htmlinclude HeaderSample.msg.html

(cl:defclass <HeaderSample> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (recv_time
    :reader recv_time
    :initarg :recv_time
    :type cl:real
    :initform 0))
)

(cl:defclass HeaderSample (<HeaderSample>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HeaderSample>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HeaderSample)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lcsr_nettools-msg:<HeaderSample> is deprecated: use lcsr_nettools-msg:HeaderSample instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HeaderSample>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcsr_nettools-msg:header-val is deprecated.  Use lcsr_nettools-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'recv_time-val :lambda-list '(m))
(cl:defmethod recv_time-val ((m <HeaderSample>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcsr_nettools-msg:recv_time-val is deprecated.  Use lcsr_nettools-msg:recv_time instead.")
  (recv_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HeaderSample>) ostream)
  "Serializes a message object of type '<HeaderSample>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'recv_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'recv_time) (cl:floor (cl:slot-value msg 'recv_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HeaderSample>) istream)
  "Deserializes a message object of type '<HeaderSample>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'recv_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HeaderSample>)))
  "Returns string type for a message object of type '<HeaderSample>"
  "lcsr_nettools/HeaderSample")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HeaderSample)))
  "Returns string type for a message object of type 'HeaderSample"
  "lcsr_nettools/HeaderSample")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HeaderSample>)))
  "Returns md5sum for a message object of type '<HeaderSample>"
  "911218caa31c03d4d7aa8f57a7bb8a69")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HeaderSample)))
  "Returns md5sum for a message object of type 'HeaderSample"
  "911218caa31c03d4d7aa8f57a7bb8a69")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HeaderSample>)))
  "Returns full string definition for message of type '<HeaderSample>"
  (cl:format cl:nil "# The header of this sample~%std_msgs/Header header~%# The time this sample was received.~%time recv_time~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HeaderSample)))
  "Returns full string definition for message of type 'HeaderSample"
  (cl:format cl:nil "# The header of this sample~%std_msgs/Header header~%# The time this sample was received.~%time recv_time~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HeaderSample>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HeaderSample>))
  "Converts a ROS message object to a list"
  (cl:list 'HeaderSample
    (cl:cons ':header (header msg))
    (cl:cons ':recv_time (recv_time msg))
))
