# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - #
# ████████╗██╗  ██╗███████╗    ███╗   ██╗██╗   ██╗ ██████╗██╗     ███████╗ █████╗ ██████╗       #
# ╚══██╔══╝██║  ██║██╔════╝    ████╗  ██║██║   ██║██╔════╝██║     ██╔════╝██╔══██╗██╔══██╗      #
#    ██║   ███████║█████╗      ██╔██╗ ██║██║   ██║██║     ██║     █████╗  ███████║██████╔╝      #
#    ██║   ██╔══██║██╔══╝      ██║╚██╗██║██║   ██║██║     ██║     ██╔══╝  ██╔══██║██╔══██╗      #
#    ██║   ██║  ██║███████╗    ██║ ╚████║╚██████╔╝╚██████╗███████╗███████╗██║  ██║██║  ██║      #
#    ╚═╝   ╚═╝  ╚═╝╚══════╝    ╚═╝  ╚═══╝ ╚═════╝  ╚═════╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝      #
#                                                                                               #
#                        ██████╗ ███████╗███████╗███████╗████████╗                              #               
#                        ██╔══██╗██╔════╝██╔════╝██╔════╝╚══██╔══╝                              #               
#                        ██████╔╝█████╗  ███████╗█████╗     ██║                                 #               
#                        ██╔══██╗██╔══╝  ╚════██║██╔══╝     ██║                                 #               
#                        ██║  ██║███████╗███████║███████╗   ██║                                 #               
#                        ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝   ╚═╝                                 #               
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - #                                                                                            

#     A bash setup script to quickly and easily configure your terminal with custom settings    #



#! /bin/bash

sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update 
sudo apt install fish



#OLD PYTHON VERSION DEPENDENCIES
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get install python3.6

# PYTHON 2 INSTALLATION w/PIP2
sudo apt-add-repository universe 
sudo apt update
sudo apt install python2-minimal 

python2 --version

sudo apt update 
sudo apt install curl 
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py
sudo python2 get-pip.py

# CUDA 11.6 Installation 
wget https://developer.download.nvidia.com/compute/cuda/repos/wsl-ubuntu/x86_64/cuda-wsl-ubuntu.pin
sudo mv cuda-wsl-ubuntu.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget https://developer.download.nvidia.com/compute/cuda/11.6.0/local_installers/cuda-repo-wsl-ubuntu-11-6-local_11.6.0-1_amd64.deb
sudo dpkg -i cuda-repo-wsl-ubuntu-11-6-local_11.6.0-1_amd64.deb
sudo apt-key add /var/cuda-repo-wsl-ubuntu-11-6-local/7fa2af80.pub
sudo apt-get update
sudo apt-get -y install cuda

#EXPORT TO ~/.bashrc
echo 'export PATH="/usr/local/cuda-8.0/bin:$PATH"' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH="/usr/local/cuda-8.0/lib64:$LD_LIBRARY_PATH"' >> ~/.bashrc 