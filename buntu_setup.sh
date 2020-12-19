# Ubuntu Setup for python development with least amount of work while switching machines


###### INSTALL DOCKER ############################
#1 Remove older versions
sudo apt remove docker docker-engine docker.io containerd runc

#2 Set up repository
sudo apt update
sudo apt install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

#3 Add dockers official key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#4 Verify the key
sudo apt-key fingerprint 0EBFCD88

#5 Add the repo for the right platform (x86_64)
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Install docker and components
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io

# Install docker-compose
sudo apt install docker-compose

################### Install Python #######################
sudo apt install python3


############## Install Poetry ############################
# install python3-is-python if there are conflicts
sudo apt install python-is-python3
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -

###################### Install zsh #########################
sudo apt install zsh

################ Install powerline fonts ####################
sudo apt-get install powerline fonts-powerline

################# Install oh my zsh ###########################
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

############### Install VSCODE and ATOM #####################
sudo snap install code --classic
sudo snap install atom --classic
