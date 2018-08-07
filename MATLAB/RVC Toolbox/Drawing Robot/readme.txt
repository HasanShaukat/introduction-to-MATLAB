Simulated a 6 Degrees of Freedom (DOF) Drawing Robot which could draw the alphabet “E” on the paper with lifting and placing the hand between successive strokes. I monitored and controlled the the motion of every joint through forward and reverse kinematic analysis.

The project was to make a simulation of a robotic arm, which is like a human arm, and is writing like a human as well. It had grasped a pen all the time, and it had to move and lift and write like humans. Everything is to be calculated, estimated, simulated and plotted on the display window.

There is a custom toolbox for MATLAB, developed by Prof. Peter Corke, with which we can model and simulate robotic systems, kinematics, navigation and localization, joint structures, forces and torques and much more.

Mathematical Model Definition:
The very first thing in this simulation was to mathematically define the robotic arm. It was a 6 Degree of Freedom (DoF) robotic arm, whose joints configuration was like a Puma 360 robotic arm kit.

A robotic arm, in it’s simplest form, is made up of links and joints. Some joints are linear (pneumatic drive) and some joints are rotary (motorized). To model the arm mathematically, we need to input the length of each link, and the 3-dimensional orientation of each joint associated with each link. All this in the raw form with irregular mathematical equations will definitely become a very hectic task. And, to simplify this solution there is a set of equations and variables known as “Denavit Hartenberg Parameters”. These parameters have a specific definition, and are defined following that definition, and all further kinematics and simulations get a lot easier with these parameters.

Path Calculation:
With the robotic arm mathematically defined, the next thing to do was to define the exact path onto which the arm had to move. For these type of simulations, only the position and orientation of the end effector tool is considered and used, and the positions of all other joints are calculated and used at the back end of calculations. So, the path of writing the alphabet “E” was defined in terms of a matrix with 8 points in XYZ space. These points represent the start and end of each stroke, and in them all, the end point of one stroke is the beginning point of the next stroke.
