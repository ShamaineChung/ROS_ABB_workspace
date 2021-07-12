; Auto-generated. Do not edit!


(cl:in-package lcsr_nettools-msg)


;//! \htmlinclude TopicMeasurements.msg.html

(cl:defclass <TopicMeasurements> (roslisp-msg-protocol:ros-message)
  ((msg_loss
    :reader msg_loss
    :initarg :msg_loss
    :type cl:float
    :initform 0.0)
   (first_recv_time
    :reader first_recv_time
    :initarg :first_recv_time
    :type cl:real
    :initform 0)
   (latest_recv_time
    :reader latest_recv_time
    :initarg :latest_recv_time
    :type cl:real
    :initform 0)
   (latency
    :reader latency
    :initarg :latency
    :type lcsr_nettools-msg:StatisticsMeasurements
    :initform (cl:make-instance 'lcsr_nettools-msg:StatisticsMeasurements))
   (frequency
    :reader frequency
    :initarg :frequency
    :type lcsr_nettools-msg:StatisticsMeasurements
    :initform (cl:make-instance 'lcsr_nettools-msg:StatisticsMeasurements)))
)

(cl:defclass TopicMeasurements (<TopicMeasurements>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TopicMeasurements>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TopicMeasurements)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lcsr_nettools-msg:<TopicMeasurements> is deprecated: use lcsr_nettools-msg:TopicMeasurements instead.")))

(cl:ensure-generic-function 'msg_loss-val :lambda-list '(m))
(cl:defmethod msg_loss-val ((m <TopicMeasurements>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcsr_nettools-msg:msg_loss-val is deprecated.  Use lcsr_nettools-msg:msg_loss instead.")
  (msg_loss m))

(cl:ensure-generic-function 'first_recv_time-val :lambda-list '(m))
(cl:defmethod first_recv_time-val ((m <TopicMeasurements>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcsr_nettools-msg:first_recv_time-val is deprecated.  Use lcsr_nettools-msg:first_recv_time instead.")
  (first_recv_time m))

(cl:ensure-generic-function 'latest_recv_time-val :lambda-list '(m))
(cl:defmethod latest_recv_time-val ((m <TopicMeasurements>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcsr_nettools-msg:latest_recv_time-val is deprecated.  Use lcsr_nettools-msg:latest_recv_time instead.")
  (latest_recv_time m))

(cl:ensure-generic-function 'latency-val :lambda-list '(m))
(cl:defmethod latency-val ((m <TopicMeasurements>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcsr_nettools-msg:latency-val is deprecated.  Use lcsr_nettools-msg:latency instead.")
  (latency m))

(cl:ensure-generic-function 'frequency-val :lambda-list '(m))
(cl:defmethod frequency-val ((m <TopicMeasurements>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lcsr_nettools-msg:frequency-val is deprecated.  Use lcsr_nettools-msg:frequency instead.")
  (frequency m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TopicMeasurements>) ostream)
  "Serializes a message object of type '<TopicMeasurements>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'msg_loss))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'first_recv_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'first_recv_time) (cl:floor (cl:slot-value msg 'first_recv_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'latest_recv_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'latest_recv_time) (cl:floor (cl:slot-value msg 'latest_recv_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'latency) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'frequency) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TopicMeasurements>) istream)
  "Deserializes a message object of type '<TopicMeasurements>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'msg_loss) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'first_recv_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'latest_recv_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'latency) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'frequency) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TopicMeasurements>)))
  "Returns string type for a message object of type '<TopicMeasurements>"
  "lcsr_nettools/TopicMeasurements")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TopicMeasurements)))
  "Returns string type for a message object of type 'TopicMeasurements"
  "lcsr_nettools/TopicMeasurements")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TopicMeasurements>)))
  "Returns md5sum for a message object of type '<TopicMeasurements>"
  "6e15701183cd32bc7d08590562cf3f21")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TopicMeasurements)))
  "Returns md5sum for a message object of type 'TopicMeasurements"
  "6e15701183cd32bc7d08590562cf3f21")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TopicMeasurements>)))
  "Returns full string definition for message of type '<TopicMeasurements>"
  (cl:format cl:nil "float64 msg_loss~%time first_recv_time~%time latest_recv_time~%lcsr_nettools/StatisticsMeasurements latency~%lcsr_nettools/StatisticsMeasurements frequency~%~%================================================================================~%MSG: lcsr_nettools/StatisticsMeasurements~%float64 avg~%float64 std~%float64 min~%float64 max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TopicMeasurements)))
  "Returns full string definition for message of type 'TopicMeasurements"
  (cl:format cl:nil "float64 msg_loss~%time first_recv_time~%time latest_recv_time~%lcsr_nettools/StatisticsMeasurements latency~%lcsr_nettools/StatisticsMeasurements frequency~%~%================================================================================~%MSG: lcsr_nettools/StatisticsMeasurements~%float64 avg~%float64 std~%float64 min~%float64 max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TopicMeasurements>))
  (cl:+ 0
     8
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'latency))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'frequency))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TopicMeasurements>))
  "Converts a ROS message object to a list"
  (cl:list 'TopicMeasurements
    (cl:cons ':msg_loss (msg_loss msg))
    (cl:cons ':first_recv_time (first_recv_time msg))
    (cl:cons ':latest_recv_time (latest_recv_time msg))
    (cl:cons ':latency (latency msg))
    (cl:cons ':frequency (frequency msg))
))
