#! /usr/bin/env python

import rospy
from pub_sub_example.msg import JointPositions

class TrajectoryPublisher(object):

    def __init__(self):
        
        self.pos_pub = rospy.Publisher('/arm_positions', JointPositions, queue_size=1)
        self.rate = rospy.Rate(1)

        self.joint_positions = JointPositions()
        self.joint_positions = [-1.95, -0.43, 0.0, -1.51, 2.32, 1.07]

    def publish_points(self):
        while not rospy.is_shutdown():
            self.pos_pub.publish(self.joint_positions)
            self.rate.sleep()
            


if __name__ == "__main__":
    rospy.init_node('trajectory_publisher_node', anonymous=True)
    traj_pub_object = TrajectoryPublisher()
    traj_pub_object.publish_points()