#!/bin/bash
# auto intallation script for cuda-10.0
wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_10.0.130-1_amd64.deb
wget http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1604/x86_64/libcudnn7_7.4.2.24-1+cuda10.0_amd64.deb
wget http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1604/x86_64/libcudnn7-dev_7.4.2.24-1+cuda10.0_amd64.deb
wget http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1604/x86_64/libnccl2_2.3.4-1+cuda10.0_amd64.deb
wget http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1604/x86_64/libnccl-dev_2.3.4-1+cuda10.0_amd64.deb

sudo dpkg -i cuda-repo-ubuntu1604_10.0.130-1_amd64.deb
sudo dpkg -i libcudnn7_7.4.2.24-1+cuda10.0_amd64.deb
sudo dpkg -i libcudnn7-dev_7.4.2.24-1+cuda10.0_amd64.deb
sudo dpkg -i libnccl2_2.3.4-1+cuda10.0_amd64.deb
sudo dpkg -i libnccl-dev_2.3.4-1+cuda10.0_amd64.deb
sudo apt-get update
sudo apt-get install cuda=10.0.130-1
sudo apt-get install libcudnn7-dev
sudo apt-get install libnccl-dev
sudo apt-get install nvidia-cuda-toolkit

# set environment
sudo echo "export PATH=/usr/local/cuda-10.0/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-10.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
" >> ~/.bashrc
sudo source ~/.bashrc
