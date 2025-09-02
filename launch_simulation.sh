#!/bin/bash
echo "🚀 Launching TurtleBot3 Simulation"
echo "================================="

# Source environment
source ~/ros2_ws/install/setup.bash
export TURTLEBOT3_MODEL=burger

# Launch simulation
ros2 launch turtlebot3_gazebo turtlebot3_world.launch.py

# If this doesn't work and shows "No executables found", try running the every-session-commands in the repository
