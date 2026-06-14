#!/bin/bash
apt install curl git openssh-server vim
add-apt-repository ppa:obsproject/obs-studio
add-apt-repository ppa:ubuntuhandbook1/ffmpeg-7
apt update
apt upgrade
apt install obs-studio ffmpeg wget
wget https://raw.githubusercontent.com/DistroAV/DistroAV/refs/heads/master/CI/libndi-get.sh
chmod +x libndi-get.sh
./libndi-get.sh install
apt install apache2 php libapache2-mod-php python3-pip
cd /opt
git clone https://github.com/evade-ninja/bcast-control.git
sudo a2enmod ssl
ln /opt/bcast-control/apache/bcast.conf /etc/apache2/sites-available/bcast.conf
a2ensite bcast
a2dissite 000-default
pip3 install obs-websocket-py --break-system-packages