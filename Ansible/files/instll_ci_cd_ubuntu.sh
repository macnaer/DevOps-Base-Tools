#! /bin/bash

### Update repos
sudo apt-get update -y

### Install tools for docker
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

### Added GPG Key
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

### Add docker repo
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

### Update repos 
sudo apt-get update -y

### Install Docker
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

### Added docker to autostart
sudo systemctl enable docker

### Install Jenkins
sudo apt install -y openjdk-8-jdk

sudo wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update -y
sudo apt install -y jenkins
sudo systemctl enable jenkins
