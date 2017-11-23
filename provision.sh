#!/bin/bash -x
VM_USERNAME=ubuntu
SHARED_FOLDER_PATH=/home/${VM_USERNAME}/sharedFolder


apt-get update
apt-get -y install git
apt-get -y install ansible
apt-get -y install vim
apt-get -y install docker.io
apt-get -y install docker-compose

apt-get -y install apache2
a2enmod proxy_http
cp ${SHARED_FOLDER_PATH}/hardominium.com.conf /etc/apache2/sites-available/
ln -s /etc/apache2/sites-available/hardominium.com.conf /etc/apache2/sites-enabled/hardominium.com.conf
service apache2 restart
cd ${SHARED_FOLDER_PATH}/wordpressDocker/docker-compose
./compose.sh

#apt-get -y install expect

#echo '#!/usr/bin/expect
#      set timeout 20
#      spawn sudo passwd ubuntu
#      expect "Enter new UNIX password:" {send "ubuntu\\r"}
#      expect "Retype new UNIX password:" {send "ubuntu\\r"}
#      interact' > change_ubuntu_password
#chmod +x change_ubuntu_password
#./change_ubuntu_password



su -c "source ${SHARED_FOLDER_PATH}/config_env.sh" ${VM_USERNAME}
su -c "source ${SHARED_FOLDER_PATH}/info.sh" ${VM_USERNAME}
