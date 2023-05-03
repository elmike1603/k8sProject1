#!/bin/bash

sudo apt-get update -y
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt -y install openjdk-8-jdk
sudo apt -y install jenkins git
sudo systemctl daemon-reload
sudo systemctl start jenkins
sudo systemctl status jenkin

