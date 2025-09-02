#!/bin/bash
echo "🐢 Setting up TurtleBot3 Simulation Environment"
echo "=============================================="

# Create workspace
mkdir -p ~/ros2_ws/src
cd ~/ros2_ws/src

# Clone packages
git clone -b humble https://github.com/ros2-gbp/turtlebot3-release.git turtlebot3
git clone -b humble https://github.com/ros2-gbp/turtlebot3_msgs-release.git turtlebot3_msgs
git clone -b humble https://github.com/ros2-gbp/turtlebot3_simulations-release.git turtlebot3_simulations

# Install dependencies
sudo apt update
sudo apt install -y ros-humble-teleop-twist-keyboard

# Build workspace
cd ~/ros2_ws
colcon build --symlink-install

# Permanent environment setup
echo "source ~/ros2_ws/install/setup.bash" >> ~/.bashrc
echo "export TURTLEBOT3_MODEL=burger" >> ~/.bashrc
source ~/.bashrc

echo "✅ Setup complete! Run ./launch_simulation.sh to start"
