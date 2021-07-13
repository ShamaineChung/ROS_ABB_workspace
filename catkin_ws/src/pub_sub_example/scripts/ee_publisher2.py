#! /usr/bin/env python

import rospy
from geometry_msgs.msg import PoseStamped, Pose, Point, Quaternion

class TrajectoryPublisher(object):

    def __init__(self):
        
        self.pos_pub = rospy.Publisher('/ee_pose', PoseStamped, queue_size=1)
        self.rate = rospy.Rate(1)

        self.ee_pose = PoseStamped()

        self.gripper_poses = [Pose(Point(0.248, -0.000, 0.412), Quaternion(0.000, 0.0, -0.011, 1.0)),
                              Pose(Point(0.1, 0.1, 0.40), Quaternion(0.0, -0.1, 0.4, 0.9))]

        self.ee_pose.header.frame_id = 'base_link'

    def publish_points(self):
        while not rospy.is_shutdown():

	    for pose in self.gripper_poses:

		self.ee_pose.pose=pose
		self.ee_pose.header.stamp = rospy.Time.now()
		self.pos_pub.publish(self.ee_pose)
		self.rate.sleep()
            


if __name__ == "__main__":
    rospy.init_node('trajectory_publisher_node', anonymous=True)
    traj_pub_object = TrajectoryPublisher()
    traj_pub_object.publish_points()
