#! /usr/bin/env python
from threading import Thread
from datetime import date
import subprocess, os, sys, rospy, rospkg, genpy, yaml, copy, time, csv
import geometry_msgs.msg, moveit_msgs.msg, tf2_ros, logging
from moveit_python import MoveGroupInterface
from moveit_commander import RobotCommander, PlanningSceneInterface, MoveGroupCommander
from moveit_commander import roscpp_initialize, roscpp_shutdown
from moveit_msgs.msg import RobotState, Grasp, MoveItErrorCodes
from geometry_msgs.msg import PoseStamped, Pose, Point, Quaternion
from std_msgs.msg import String
from pub_sub_example.msg import JointPositions
import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d.axes3d import Axes3D
from mpl_toolkits.mplot3d import proj3d
import matplotlib.animation as animation
import pandas as pd
from sys import exit

#This script does not constantly records the abb robot pose, it only record when robot reaches the designated position.

class TrajectorySubscriber(object):

    def __init__(self):

        rospy.init_node('trajectory_subscriber_node', anonymous=True)
       
        self.pose_sub = rospy.Subscriber('/ee_pose', String, self.ee_callback, queue_size=1, buff_size=65536, tcp_nodelay=True)
        self.msg_sub = rospy.Subscriber('/ee_message', String, self.msg_callback, queue_size=1, buff_size=65536, tcp_nodelay=True)

        self.pose_move_group = MoveGroupInterface("abb_arm", "base_link")

        self.group = MoveGroupCommander('abb_arm')

        self.ee_pose = String()

        self.new_ee_pose = PoseStamped()

        self.new_ee_pose.header.frame_id = 'base_link'

        self.fields = ['x','y','z']

        self.ee_msg = String()

        self.ee_pose_array = []

        self.gripper_frame = 'tool0'

        self.got_msg = 0
        self.execute_iteration = 1

        self.path_names = ['','']

    def ee_callback(self, msg):
        self.ee_pose = str(msg.data)

    def msg_callback(self,msg):
        self.ee_msg = str(msg.data)

    def array_to_csv(self,file_name,fields,array):

        file = open(file_name,'w')
        file_csv = csv.writer(file)
        file_csv.writerow(fields)
        file_csv.writerows(array)

        file.close()

    def execute_trajectory(self):
        rospy.loginfo("Ready to capture unity coordinates.")

        reset_msg = 0
        execute_msg = 0
        while not rospy.is_shutdown():
            #print(str(self.ee_msg))
            try:

                if self.ee_msg == "reset":

                    if reset_msg == 0:
                        rospy.loginfo("Robot reset to home position.")
                        reset_msg = 1
                    
                    #self.joint_move_group.moveToJointPosition(self.joints, self.joint_positions, 0.2)
                    joint_goal = self.group.get_current_joint_values()

                    for i in range(6):
                        joint_goal[i] = 0.0

                    self.group.go(joint_goal, wait=True)
                    self.group.stop()
                    self.group.clear_pose_targets()

                    self.ee_pose_array = []

                if self.ee_msg == "":

                    try:
                        poses = self.ee_pose.split('_')
                    except Exception:
                        poses = ['']
                        
                    if len(poses) > 1:
                        self.start_timer = True
                        unity_csv_array = []
                        ros_csv_array = []
                        
                        for index, pose in enumerate(poses):

                            if index != len(poses) - 1:
                                position_data, orientation_data = pose.split('|')

                                position = position_data.split(',')
                                orientation = orientation_data.split(',')

                                unity_csv_array.append([float(position[0]),
                                                        float(position[1]),
                                                        float(position[2])])

                                # current_pose = self.group.get_current_pose().pose
                                # current_pose.position.x = float(position[0])
                                # current_pose.position.y = float(position[1])
                                # current_pose.position.z = float(position[2])

                                # self.ee_pose_array.append(copy.deepcopy(current_pose))
                                self.ee_pose_array.append(Pose(Point(float(position[0]),
                                                                     float(position[1]),
                                                                     float(position[2])),
                                                          Quaternion(float(orientation[0]),
                                                                     float(orientation[1]),
                                                                     float(orientation[2]),
                                                                     float(orientation[3]))))
                        if execute_msg == 0:
                            rospy.loginfo("Done storing coordinates.")
                       
                        if len(unity_csv_array) == 0:
                            exit()

                        unity_csv_array.pop(0)
                        self.array_to_csv('unity_coord.csv', self.fields, unity_csv_array)
                        

                        while self.execute_iteration != 11:

                            rospy.loginfo("Running Cycle: " + str(self.execute_iteration) + ".")

                            ros_csv_array = []

                            for index, pose in enumerate(self.ee_pose_array):
                                #print("test_1")
                                self.new_ee_pose.pose = pose
                                self.new_ee_pose.header.stamp = rospy.Time.now()

                                result = self.pose_move_group.moveToPose(self.new_ee_pose, self.gripper_frame,0.01)
                                if index >= 1:

                                    pose_info = self.group.get_current_pose()
                                    ros_csv_array.append([pose_info.pose.position.x,
                                    pose_info.pose.position.y,
                                    pose_info.pose.position.z - 0.4])

                                if result:

                                    if result.error_code.val == MoveItErrorCodes.SUCCESS:
                                        rospy.loginfo("Positions: [" + str(pose.position.x) + ", ")
                                        print("                                        " + str(pose.position.y) + ", ")
                                        print("                                        " + str(pose.position.z) +"]")
                                        print

                                

                                    else:
                                        rospy.logerr("Arm goal in state: %s", self.pose_move_group.get_move_action().get_state())

                                elif result == None:
                                    rospy.logerr("MoveIt failure! No result returned.")

                            self.array_to_csv('ros_coord_' + str(self.execute_iteration) + '.csv', self.fields, ros_csv_array)

                            rospy.loginfo("Cycle " + str(self.execute_iteration) + " Complete.")
                            self.execute_iteration += 1

                        if execute_msg == 0:
                            rospy.loginfo("Cycle done.")        
                            execute_msg = 1                


            except tf2_ros.InvalidArgumentException:
                rospy.logwarn("ROS Invalid Argument happens.")
                #rospy.sleep(1)
               
        self.pose_move_group.get_move_action().cancel_all_goals()
 

if __name__ == "__main__": 
    
    traj_sub_object = TrajectorySubscriber()
    #traj_sub_object.test_run()
    time.sleep(2)    
    rospy.loginfo("Initialized rospy.")

    traj_sub_object.execute_trajectory()
    #traj_sub_object.execute_trajectory()
try:
    sys.stdout.close()
except:
    pass
    
    
    
