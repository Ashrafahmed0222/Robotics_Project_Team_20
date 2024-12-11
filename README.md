# Robotics_Project_Team_20
A robotic arm was designed for lightweight material handling and sorting applications in small industries. The arm automatically sorts metal and non-metal objects on a conveyor belt using sensors and an Arduino microcontroller
__________________________________________________________________________________________________________

# Milestone 1

This milestone includes the following:

- **Two-page literature review**.
- **Robotic manipulator CAD models**.
- **List of components**.
- **Video showing downloaded Simscape Multibody and Coppeliasim software**.
__________________________________________________________________________________________________________
__________________________________________________________________________________________________________
__________________________________________________________________________________________________________

# Milestone 2

this milestone includes the following:

## 1. Report (Word File)
This folder contains a detailed report that builds on the previous milestone, including the following:

- **Coordinate Frame Assignment**: The definition and assignment of coordinate frames for the robot system.
- **DH-Convention Table**: A table summarizing the Denavit-Hartenberg (DH) parameters for the robot.
- **Total Homogeneous Transformation Matrix**: The final matrix representing the total transformation between the base frame and the end effector.
- **Simulation Results**:
  - Screenshots of simulations performed in Simscape Multibody and CoppeliaSim.
  - Comments on system performance based on various inputs provided, highlighting the limitations and constraints of the system.
- **Modifications to the Design**: Details on any modifications done to the robot's design during this milestone.
- **Hardware Fabrication Process**: Step-by-step documentation of the hardware fabrication process.

---

## 2. Script Folder
This folder contains the following scripts and files for system simulation:

- **STL Files**: 3D model files of the robot (if any modifications have been made).
- **XML File**: The XML file exported from the simulation software.
- **URDF File**: A Unified Robot Description Format (URDF) file of the robot.
- **Simulink (.slx) File**: Simulink model actuated by the inputs required for the system.
- **MATLAB (.m) Files**: MATLAB scripts/functions for the system simulation.
- **Python (.py) Files**: Python scripts for running simulations in CoppeliaSim.

---

## 3. Media Folder
This folder includes narrated videos of simulations and hardware fabrication:

- **Video1.mp4**: A video demonstrating the Simscape Multibody simulation and MATLAB functions responses. The analysis includes:
  - Motion of the robot, with comments on the performance based on joint rotations and coordinate frames on robot links and joints.
  - Constraints and limitations of the robot's motion.
  
- **Video2.mp4**: A video of the CoppeliaSim simulation and Python script responses. It includes:
  - Analysis of robot motion, focusing on joint rotations and their respective axes.
  - Comments on the performance and constraints of the system.

- **Video3.mp4**: A video documenting the fabrication process of the hardware, showing motors being connected and tested in an open-loop setup.

---

### Notes:
- Ensure all files are placed in their respective folders as mentioned above.
- This milestone builds on the previous report and incorporates additional hardware and simulation testing results.


__________________________________________________________________________________________________________
__________________________________________________________________________________________________________
__________________________________________________________________________________________________________

# Milestone 3

This repository contains the implementation and evaluation of **Inverse Position Kinematics**, **Forward Velocity Kinematics**, and **Inverse Velocity Kinematics** for a robotic arm. The project utilizes MATLAB, Python, Simulink, and CoppeliaSim, with hardware testing conducted through Arduino. 

## Project Overview

Milestone 3 tasks are focused on computing and validating both positional and velocity kinematics of the robotic arm, enabling robust simulations and hardware testing.

### Contents
1. **Inverse Position Kinematics**
   - **Numerical Approach (Newton-Raphson)**
   - Implemented in MATLAB and Python.
   - Functions:
     - `J_inv = inverse_jacobian_matrix(q)`: Computes the inverse of the Jacobian matrix.
     - `q = inverse_kinematics_func(q0, X)`: Returns joint angles to achieve the target end-effector position.
  
2. **Forward Velocity Kinematics**
   - Computes the Jacobian matrix, `J = jacobian_matrix(q)`, to relate joint velocities to end-effector velocities.
   - `V_F = forward_velocity_kinematics(q, q_dot)`: Provides end-effector velocity for given joint angles and velocities.

3. **Inverse Velocity Kinematics**
   - Uses the inverse Jacobian to relate end-effector velocities to joint velocities.
   - `q_dot = inverse_velocity_kinematics(q, V_F)`: Returns joint velocities needed to achieve a target end-effector velocity.

4. **Simulink Integration**
   - MATLAB functions are integrated into Simulink for simulating forward and inverse kinematics.
   - Results are validated with Simscape by comparing end-effector position and velocity against transform sensor block output.

5. **Python and CoppeliaSim Integration**
   - Python-based forward and inverse kinematics functions are used to simulate the robotic arm in CoppeliaSim.
   - Outputs are verified by comparing sensed end-effector positions and velocities with Python calculations.

6. **Hardware Fabrication and Testing**
   - Completed hardware fabrication of the robotic arm, including open-loop testing of motors and sensors with Arduino.
   - Ensures the structure and circuitry are organized, with the robotic arm base fixed at the first joint.

### Video Demonstrations

- **Forward Position Kinematics and Inverse Position Kinematics Validation in Simulink and Simscape**  
 
  
- **Forward Velocity Kinematics and Inverse Velocity Kinematics Validation in Simulink and Simscape**  


- **Hardware Testing **  


__________________________________________________________________________________________________________
__________________________________________________________________________________________________________
__________________________________________________________________________________________________________


# Milestone 4

This repository contains the implementation and validation of **two joint space trajectories** for a selected service robotic application. The tasks include validating the trajectories on simulation environments (Simscape Multibody and CoppeliaSim) and the developed hardware. The project also involves sending the joint angles to an Arduino to execute the trajectories on the hardware.

---

Contents

### 1. Trajectory Design and Validation
- **TWO Trajectories**: Joint space trajectories specifically designed for the selected service robotic application.
- **Validation**:
  - Simscape Multibody
  - CoppeliaSim
  - Hardware implementation

### 2. Files Included
#### Word Document
- **Trajectory Equations**:
  - Detailed mathematical equations for the developed trajectories.
- **Trajectory Visualization**:
  - Drawn diagrams to visualize the robot's desired motion.
- **Validation Comments**:
  - Observations and insights on trajectory validation across Simscape Multibody, CoppeliaSim, and hardware.

#### Simulink and Simscape
- `Simulink.slx`: Simulink model of the robotic system actuated by the trajectory inputs.

#### Python Code
- `Python.py`: Python scripts for trajectory generation, simulation, and Arduino interfacing.

#### Videos
- **Video1.mp4**: Hardware validation:
  - Demonstrates the fabricated hardware executing the chosen trajectories.
  - Includes comments on hardware performance.
- **Video2.mp4**: Simscape Validation:
  - Simulink and Simscape Multibody simulation showing trajectory validation.
  - Includes comments on performance.
- **Video3.mp4**: CoppeliaSim Validation:
  - CoppeliaSim simulation showing trajectory validation.
  - Includes comments on performance.

---

## Implementation Steps
1. **Trajectory Design**:
   - Define joint space trajectories using mathematical equations.
   - Create visualizations for understanding and communication.

2. **Simulation Validation**:
   - Validate trajectories in:
     - **Simscape Multibody** (via Simulink)
     - **CoppeliaSim** (imported trajectory motion).

3. **Hardware Validation**:
   - Use Arduino to actuate the robotic hardware with joint angles derived from the designed trajectories.

4. **Documentation**:
   - Prepare detailed reports on the trajectory equations, design, and validation.

5. **Video Demonstrations**:
   - Record and narrate videos showcasing the validation in hardware, Simscape, and CoppeliaSim.


__________________________________________________________________________________________________________
__________________________________________________________________________________________________________
__________________________________________________________________________________________________________


# Milestone 5

This repository contains all the necessary files, simulations, and documentation related to the project. Below is a detailed breakdown of the repository contents:

### 1. MATLAB/Simulink Files
- **Folder:** `MATLAB_Simulink`
  - `.m` files: MATLAB scripts for system control and simulation.
  - `.slx` files: Simulink models for system simulation.
  - Simscape Multibody model: Included within the `.slx` files.

### 2. Arduino Files
- **Folder:** `Arduino_Codes`
  - `.ino` files: Arduino sketches for hardware motion control.

### 3. Python Files
- **Folder:** `Python_CoppeliaSim`
  - `.py` files: Python scripts for system control and integration with CoppeliaSim.
  - CoppeliaSim model: Included as part of the scripts.

### 4. Documentation
  - Word/PDF file: Detailed report (6-8 pages) including:
    - Introduction.
    - Methodology.
    - Results.
    - Conclusions.
    - Models and trajectories of the system.
    - Simscape and CoppeliaSim simulations.
    - Final hardware setup and connections.
    - Results and overall setup connecting both arms together.
    - Outcomes and limitations.
    - Links/QR codes for videos showcasing the system.

### 5. Presentation

### 6. Media File
  - **Videos:**
    - `Video1.mp4`: Demonstration of the fabricated hardware, common stand of the two robots, and trajectory validation.
    - `Video2.mp4`: Simscape simulation demonstrating trajectory validation.
    - `Video3.mp4`: CoppeliaSim simulation demonstrating trajectory validation.
  - **Photos:** Pictures of the team:).




