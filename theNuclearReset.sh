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

# OH MY FISH INSTALLATION: https://github.com/oh-my-fish/oh-my-fish
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

# BASS INSTALLATION: https://github.com/edc/bass
omf install bass

# SET FISH AS DEFAULT TERMINAL 
echo /usr/bin/fish | sudo tee -a /etc/shells  
chsh -s /usr/bin/fish  


# PYTHON 2 INSTALLATION w/PIP2
sudo apt-add-repository universe 
sudo apt update
sudo apt install python2-minimal 

python2 --version

sudo apt update 
sudo apt install curl 
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py
sudo python2 get-pip.py