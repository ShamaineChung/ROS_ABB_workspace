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

        self.ee_msg = String()

        self.ee_pose_array = []

        self.gripper_frame = 'tool0'

        self.allow_capture = False
        self.start_timer = False

        self.got_msg = 0
        self.execute_iteration = 0
        self.path_no = 1
        self.path_names = ['','']

    def ee_callback(self, msg):
        self.ee_pose = str(msg.data)

    def msg_callback(self,msg):
        self.ee_msg = str(msg.data)

    def extract_coord(self):
        rospy.loginfo("Capturing realtime robot position.")
        ros_csv_array = []
        
        while not rospy.is_shutdown():

            if self.allow_capture == True:
                pose_info = self.group.get_current_pose()
                ros_csv_array.append([pose_info.pose.position.x,
                                      pose_info.pose.position.y,
                                      pose_info.pose.position.z - 0.4])

            if self.got_msg == 1:
                fields = ['x','y','z']
                self.path_names[1] = 'ros_coord_' + str(self.path_no) + '.csv'
                self.array_to_csv(self.path_names[1],fields,ros_csv_array)
                
                ros_csv_array = []
                if self.path_no != 10:
                    self.path_no += 1
                else:
                    self.path_no = 1

                self.got_msg = 2

    def array_to_csv(self,file_name,fields,array):

        file = open(file_name,'w')
        file_csv = csv.writer(file)
        file_csv.writerow(fields)
        file_csv.writerows(array)

        file.close()

    def execute_trajectory(self):

        file = open('timer.csv','w')
        file_csv = csv.writer(file)
        file_csv.writerow(['TIme (seconds)'])
        file.close()

        print_msg = 0
        while not rospy.is_shutdown():
            #print(str(self.ee_msg))
            try:

                if self.ee_msg == "reset":
                    if print_msg == 0:
                        rospy.loginfo("Reset robot to home position.")
                        print_msg = 1
                    #self.joint_move_group.moveToJointPosition(self.joints, self.joint_positions, 0.2)
                    joint_goal = self.group.get_current_joint_values()

                    for i in range(6):
                        joint_goal[i] = 0.0

                    self.group.go(joint_goal, wait=True)
                    self.group.stop()
                    self.group.clear_pose_targets()

                    self.ee_pose_array = []
                    self.got_msg = 0

                if self.ee_msg == "" and self.got_msg == 0:

                    try:
                        poses = self.ee_pose.split('_')
                    except Exception:
                        poses = ''
                        
                    if len(poses) > 0:
                        self.start_timer = True
                        unity_csv_array = []
                        ros_csv_array = []
                        
                        for index, pose in enumerate(poses):
                            if self.ee_msg == "reset":
                                break

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

                        rospy.loginfo("Done storing coordinates.")
                       
                        fields = ['x','y','z']

                        if len(unity_csv_array) == 0:
                            exit()
                        unity_csv_array.pop(0)
                        self.path_names[0] = 'unity_coord_' + str(self.path_no) + '.csv'
                        self.array_to_csv(self.path_names[0], fields, unity_csv_array)
                        
                        if os.path.exists('./timer.csv') != True:
                            
                            file = open('timer.csv','w')
                            file_csv = csv.writer(file)
                            file_csv.writerow(['TIme (seconds)'])
                            file.close()

                        check_file_rows = csv.reader(open('timer.csv'))
                        num_rows = len(list(check_file_rows))
                        rospy.loginfo("Number of rows: " + str(num_rows))

                        if num_rows == 11:
                            file = open('timer.csv','w')
                            file_csv = csv.writer(file)
                            file_csv.writerow(['TIme (seconds)'])
                            file.close()
                            
                            check_file_rows = csv.reader(open('timer.csv'))
                            num_rows = len(list(check_file_rows))

                        with open('timer.csv','a') as file:
                            timer_csv = csv.writer(file)                              

                            start_move_time = int(round(time.time() * 1000))
                            
                            for index, pose in enumerate(self.ee_pose_array):
                                
                                if index == 2:
                                    self.allow_capture = True
                                #print("test_1")
                                self.new_ee_pose.pose = pose
                                self.new_ee_pose.header.stamp = rospy.Time.now()
                               
                                result = self.pose_move_group.moveToPose(self.new_ee_pose, self.gripper_frame,0.01)
                                
                                                      # Reason to deduct 0.4 is because the robot arm is position 40 cm above origin in z axis
                                                      # (Refer to irb1200_5_90_macro.xacro)

                                #print("test_3")
                                #group_variable_values = self.group.get_current_joint_values()
                                if result:

                                    if result.error_code.val == MoveItErrorCodes.SUCCESS:
                                    #rospy.loginfo("Trajectory successfully executed!")

                                        rospy.loginfo("Positions: [" + str(pose.position.x) + ", ")
                                        print("                                        " + str(pose.position.y) + ", ")
                                        print("                                        " + str(pose.position.z) +"]")
                                        print
                                        if self.ee_msg == "reset":
                                            break

                                    else:
                                        rospy.logerr("Arm goal in state: %s", self.pose_move_group.get_move_action().get_state())

                                elif result == None:
                                    rospy.logerr("MoveIt failure! No result returned.")
                            
                            end_move_time = int(round(time.time() * 1000))

                            total_move_time = str((end_move_time - start_move_time) / 1000).split('.')[0]
                            rospy.loginfo("Total move time in seconds: " + total_move_time)
                            timer_csv.writerow([total_move_time])

                        self.allow_capture = False
                        
                        self.got_msg = 1
                        print_msg = 0

                        while self.ee_msg != "reset":

                            fig = plt.figure(figsize=(12,10))

                            fig.canvas.manager.set_window_title("Trajectory (meter)")
                            unity = pd.read_csv(self.path_names[0], sep=',', header=0)
                            ros = pd.read_csv(self.path_names[1], sep=',', header=0)

                            unity_data = np.array((unity['x'].values, unity['y'].values, unity['z'].values))
                            ros_data = np.array((ros['x'].values, ros['y'].values, ros['z'].values))
                            # print('unity: ',unity['z'].values)
                            # print('ros:', ros['z'].values)

                            # First Subplot
                            ax = fig.add_subplot(2, 2, 1, projection='3d')
                            ax.dist = 13
                            ax.plot3D(unity_data[0], unity_data[1], unity_data[2], color = 'blue', label = "Unity")

                            ax.scatter(ros_data[0], ros_data[1], ros_data[2], c = 'r', label = "ROS")

                            ax.set_xlabel('X (meter)',fontsize = 12.0, labelpad=18)

                            ax.set_ylabel('Y (meter)',fontsize = 12.0, labelpad=18)

                            ax.set_zlabel('Z (meter)',fontsize = 12.0, labelpad=18)
                            ax.legend(loc="upper right",handlelength=4)
                            plt.rcParams['font.size'] = '8'
                            ax.set_title('3D Trajectory')

                            ax = fig.add_subplot(2, 2, 2)

                            ax.plot(unity_data[1], unity_data[2], color = 'blue', label="Unity")

                            ax.scatter(ros_data[1], ros_data[2], c = 'r', label = "ROS")

                            ax.set_xlabel("Y (meter)", fontsize = 10.0)
                            ax.set_ylabel('Z (meter)', fontsize = 10.0)
                            plt.grid(color = 'gray', linestyle = '--', linewidth = 0.5)
                            ax.legend(loc="upper right", handlelength=4)
                            ax.set_title('YZ Trajectory')


                            ax = fig.add_subplot(2, 2, 3)

                            ax.plot(unity_data[0], unity_data[1], color = 'blue', label = "Unity")

                            ax.scatter(ros_data[0], ros_data[1], c = 'r', label = "ROS")
                            ax.set_xlabel("X (meter)", fontsize = 10.0)
                            ax.set_ylabel('Y (meter)', fontsize = 10.0)
                            plt.grid(color = 'gray', linestyle = '--', linewidth = 0.5)
                            ax.legend(loc="upper right", handlelength=4)
                            ax.set_title('XY Trajectory')

                            ax = fig.add_subplot(2, 2, 4)

                            ax.plot(unity_data[0], unity_data[2], color = 'blue', label="Unity")

                            ax.scatter(ros_data[0], ros_data[2], c = 'r', label = "ROS")
                            ax.set_xlabel("X (meter)", fontsize = 10.0)
                            ax.set_ylabel('Z (meter)', fontsize = 10.0)
                            plt.grid(color = 'gray', linestyle = '--', linewidth = 0.5)
                            ax.legend(loc="upper right", handlelength=4)
                            ax.set_title('XZ Trajectory')

                            plt.savefig('trajectory_'+ str(num_rows) +'.png')

                            break



            except tf2_ros.InvalidArgumentException:
                rospy.logwarn("ROS Invalid Argument happens.")
                #rospy.sleep(1)
               
        self.pose_move_group.get_move_action().cancel_all_goals()
 

if __name__ == "__main__": 
    
    traj_sub_object = TrajectorySubscriber()
    #traj_sub_object.test_run()
    time.sleep(2)
    rospy.loginfo("Initialized rospy.")
    
    Thread(target=traj_sub_object.extract_coord).start()
    traj_sub_object.execute_trajectory()
    #traj_sub_object.execute_trajectory()
try:
    sys.stdout.close()
except:
    pass
    
    
    
