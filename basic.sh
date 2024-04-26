#!/bin/bash

echo "-----> $HOME"
echo "-----> $PWD"

sudo apt-get -y update
sudo apt-get -y upgrade

# locale
sudo apt-get install -y locales-all
sudo locale-gen "en_US.UTF-8"
sudo update-locale LC_ALL="en_US.UTF-8" LANG="en_US.UTF-8" LANGUAGE="en_US:en"

# timezone
sudo timedatectl set-timezone Asia/Shanghai

# ntp
apt install -y ntp
apt install -y ntpdate
ntpdate -u time.nist.gov

# common tools
sudo apt-get install -y git vim zip htop wget tree
sudo apt-get -y upgrade
sudo apt-get -y autoremove
