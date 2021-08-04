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

#This script capture all abb robot pose data 
#whenever the Hololens data is received and being use to move abb robot

class TrajectorySubscriber(object):

    def __init__(self):
        #Initialize ros subscriber node
        rospy.init_node('trajectory_subscriber_node', anonymous=True)
       #Subscriber that tracks position and rotation data from ros topic "/ee_pose"
        self.pose_sub = rospy.Subscriber('/ee_pose', String, self.ee_callback, queue_size=1, buff_size=65536, tcp_nodelay=True)
        #Subscriber that tracks message data of reset state from ros topic "/ee_message"
        self.msg_sub = rospy.Subscriber('/ee_message', String, self.msg_callback, queue_size=1, buff_size=65536, tcp_nodelay=True)
        # (Subscriber capture data continuously wehen a connection is established,
        # that data will be extracted with a callback function and store it into a variable)

        # Interface for moving real robot 
        self.pose_move_group = MoveGroupInterface("abb_arm", "base_link")
        #Commander to reset robot to home position
        self.group = MoveGroupCommander('abb_arm')
        
        #Variable that store string pose data 
        self.ee_pose = String()
        #Variable to store new pose data extracted from string pose data
        self.new_ee_pose = PoseStamped()
        #Attach frame id header to variable new pose data 
        self.new_ee_pose.header.frame_id = 'base_link'
        #Variable that store reset state data
        self.ee_msg = String()
        #An array that store the string pose data that has been broken down into
        #This form: Pose(Point(X,Y,Z),Quaternion(X,Y,Z,W))
        self.ee_pose_array = []
        #Variable that store the end effector link name
        self.gripper_frame = 'tool0'
        #Boolean flag to start or stop capturing real time pose data from abb robot
        self.allow_capture = False
        #Boolean flag to start or stop recording how many seconds to move according to pose data received
        self.start_timer = False

        #Integer flag to check if a string pose data is received
        #If the new data received are processed and moved the robot according to it
        #This integer flag will change to 1.

        #When integer flag change to 1, extract coord function will stop recording Abb robot pose data
        #and write that data to a csv file
        self.got_msg = 0
        #The counter that keep track the number of path has been recorded
        self.path_no = 1
        #Array to save new path name each time a new path received from Hololens 
        #Example: [unity_coord_1.csv, ros_coord_1.csv] it will change to [unity_coord_2.csv, ros_coord_2.csv] 
        #When a new path received
        self.path_names = ['','']
        
    #The callback function that capture string pose data
    def ee_callback(self, msg):
        self.ee_pose = str(msg.data)
    #The callback funtion that capture reset state data
    def msg_callback(self,msg):
        self.ee_msg = str(msg.data)
    #The function that extract abb robot coordinates and write it into file
    def extract_coord(self):
        #Print a message in terminal
        rospy.loginfo("Capturing realtime robot position.")
        #Initialize an empty array that would store abb robot coordinates
        ros_csv_array = []
        
        #When rospy is still running
        while not rospy.is_shutdown():
            #When this boolean flag is true
            if self.allow_capture == True:
                #Store the current pose of abb robot into a variable
                pose_info = self.group.get_current_pose()
                #Separate each x,y,z  position data and store it into array
                # Reason to deduct 0.4 is because the robot arm is position 40 cm above origin in z axis
                                                      
                ros_csv_array.append([pose_info.pose.position.x,
                                      pose_info.pose.position.y,
                                      pose_info.pose.position.z - 0.4])
            #If all the position has been moved according to Hololens pose data
            if self.got_msg == 1:
               
                #Store the name of csv file according to the path number
                self.path_names[1] = 'ros_coord_' + str(self.path_no) + '.csv'
                #Write data to the file by passing path name, header and data in to function below
                self.array_to_csv(self.path_names[1],ros_csv_array)
                #Clear the array
                ros_csv_array = []

                #If the number of path not equal to 10
                if self.path_no != 10:
                    #Continuously add one to path no variable
                    self.path_no += 1
                #Else reset path no back to 1
                else:
                    self.path_no = 1

                #Set got msg variable to 2 to stop this while loop to come back into this if statement
                self.got_msg = 2

    #As the similar functionality is needed in multiple area of the script
    #A function to create/open a file, initialize csv write and write data into that file is needed
    def array_to_csv(self,file_name,array):

        file = open(file_name,'w')
        file_csv = csv.writer(file)
        #Array that store the header of csv file
        file_csv.writerow( ['x','y','z'])
        file_csv.writerows(array)

        file.close()

    #Main function to detect if there the reset state data is received, reset the position of abb position to home position
    #If pose data has been received when reset state data is empty, the 
    def execute_trajectory(self):

        file = open('timer.csv','w')
        file_csv = csv.writer(file)
        file_csv.writerow(['TIme (seconds)'])
        file.close()
        #To make sure the reset state message only print once
        print_msg = 0
        while not rospy.is_shutdown():
            #print(str(self.ee_msg))
            try:
                #If the reset state data has been received
                if self.ee_msg == "reset":
                    #Print message once
                    if print_msg == 0:
                        rospy.loginfo("Reset robot to home position.")
                        print_msg = 1
                    #Get the current joint value of abb robot
                    joint_goal = self.group.get_current_joint_values()

                    #loop through six joints and set each joint to zero so it is back to home position
                    for i in range(6):
                        joint_goal[i] = 0.0

                    #Execute this joint data with move group commander, wait till its done moving to home position
                    self.group.go(joint_goal, wait=True)
                    #Stop the move group commander
                    self.group.stop()
                    #Clear the pose target to provide the opportunity for new pose data to insert as pose target
                    self.group.clear_pose_targets()
                    #Clear the array that store pose data 
                    self.ee_pose_array = []
                    #Reset integer flag to zero
                    self.got_msg = 0
                #If there is no reset state data received and got msg flag is zero
                if self.ee_msg == "" and self.got_msg == 0:

                    #try to split the pose data with '_' to separate each individual datasets
                    #If exception occurs, set variable poses to be an empty array
                    try:
                        poses = self.ee_pose.split('_')
                    except Exception:
                        poses = []
                    
                    #If poses array is not empty
                    if len(poses) > 0:
                        #Start record the time needed to execute trajectory
                        self.start_timer = True
                        #Create two empty array to contain unity and ros csv data
                        #Example Unity:[X,Y,Z] ROS:[X,Y,Z]
                        unity_csv_array = []
                        ros_csv_array = []
                        #Loop through the poses array with enumerate to get both index and content of poses
                        for index, pose in enumerate(poses):
                            #If reset state data was received while the for loop is still looping
                            #break out of this for loop
                            if self.ee_msg == "reset":
                                break
                            #If for loop has not reach the last index of poses
                            if index != len(poses) - 1:
                                #Split data into position and orientation data
                                position_data, orientation_data = pose.split('|')

                                #Split the position data with comma to get X,Y,Z separately
                                position = position_data.split(',')
                                 #Split the orientation data with comma to get X,Y,Z,W separately
                                orientation = orientation_data.split(',')
                                #Append only the position data for graph plotting 
                                unity_csv_array.append([float(position[0]),
                                                        float(position[1]),
                                                        float(position[2])])

                               #Append position and orientation data for abb robot movement
                                self.ee_pose_array.append(Pose(Point(float(position[0]),
                                                                     float(position[1]),
                                                                     float(position[2])),
                                                          Quaternion(float(orientation[0]),
                                                                     float(orientation[1]),
                                                                     float(orientation[2]),
                                                                     float(orientation[3]))))
                        #Print a message notify user that the pose data has been successfully stored
                        rospy.loginfo("Done storing coordinates.")
                       
                       #If there was no data stored in unity array, terminate the script as this is an error
                        if len(unity_csv_array) == 0:
                            exit()

                        #Remove the first position data from unity array 
                        #(This is necessary as the first position data in unity array is 
                        #data from home position move toward the first received pose data)
                        unity_csv_array.pop(0)
                        self.path_names[0] = 'unity_coord_' + str(self.path_no) + '.csv'
                        self.array_to_csv(self.path_names[0], unity_csv_array)
                        #If there is no timer.csv file in home folder, createe a folder
                        #Insert the header ['Time (seconds)']
                        if os.path.exists('./timer.csv') != True:
                            
                            file = open('timer.csv','w')
                            file_csv = csv.writer(file)
                            file_csv.writerow(['TIme (seconds)'])
                            file.close()
                        #Checking the number of entires in timer.csv file
                        check_file_rows = csv.reader(open('timer.csv'))
                        num_rows = len(list(check_file_rows))
                        rospy.loginfo("Number of rows: " + str(num_rows))
                        #If the number of entires reaches 11, clear the timer.csv file
                        if num_rows == 11:
                            file = open('timer.csv','w')
                            file_csv = csv.writer(file)
                            file_csv.writerow(['TIme (seconds)'])
                            file.close()
                            
                            check_file_rows = csv.reader(open('timer.csv'))
                            num_rows = len(list(check_file_rows))
                        #Open the timer.csv file to prepare to record ros pose data
                        with open('timer.csv','a') as file:
                            timer_csv = csv.writer(file)                              
                            #Capture current time in milliseconds
                            start_move_time = int(round(time.time() * 1000))
                            #Loop through the pose array with enumerate to get both index and pose
                            for index, pose in enumerate(self.ee_pose_array):
                                #If the loop reaches index 2, start capturing abb robot pose data
                                if index == 2:
                                    self.allow_capture = True
                                #Insert the pose data into new ee pose section and acquire the current time as time stamp
                                self.new_ee_pose.pose = pose
                                self.new_ee_pose.header.stamp = rospy.Time.now()
                               #Move the robot according to new ee pose and save the result into a variable
                                result = self.pose_move_group.moveToPose(self.new_ee_pose, self.gripper_frame,0.01)
                                
                                if result:
                                    #If the returned result is success, print the X,Y,Z position of the success movement position
                                    if result.error_code.val == MoveItErrorCodes.SUCCESS:
                                    
                                        rospy.loginfo("Positions: [" + str(pose.position.x) + ", ")
                                        print("                                        " + str(pose.position.y) + ", ")
                                        print("                                        " + str(pose.position.z) +"]")
                                        print

                                        #If reset state data was received while the for loop is still looping
                                        #break out of this for loop
                                        if self.ee_msg == "reset":
                                            break
                                    #If the execution failed, print the following error message
                                    else:
                                        rospy.logerr("Arm goal in state: %s", self.pose_move_group.get_move_action().get_state())
                                #If the execution did not return anything, means move group did not attempt to execute the position
                                elif result == None:
                                    rospy.logerr("MoveIt failure! No result returned.")
                            #Get the current time after the execution of trajectory has ended in milliseconds
                            end_move_time = int(round(time.time() * 1000))

                            #Calculate the time taken to mve that trajectroy
                            total_move_time = str((end_move_time - start_move_time) / 1000).split('.')[0]
                            rospy.loginfo("Total move time in seconds: " + total_move_time)
                            #Record the time data into timer.csv file
                            timer_csv.writerow([total_move_time])

                        self.allow_capture = False
                        
                        self.got_msg = 1
                        print_msg = 0
                        #While there is no reset state data received
                        #Setup a graph window with four different section that capture 
                        #X,Y,Z trajectory X,Y trajectory, X,Z trajectory and Y,Z trajectory
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
        #Clear all goal to stop any unplanned trajectory    
        self.pose_move_group.get_move_action().cancel_all_goals()
 

if __name__ == "__main__": 
    #Initialize TrajectoryScubscriber class
    traj_sub_object = TrajectorySubscriber()
    time.sleep(2)
    rospy.loginfo("Initialized rospy.")
    
    Thread(target=traj_sub_object.extract_coord).start()
    traj_sub_object.execute_trajectory()
try:
    sys.stdout.close()
except:
    pass
    
    
    
