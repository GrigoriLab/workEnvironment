#!/bin/bash -x
VM_USERNAME=ubuntu
SHARED_FOLDER_PATH=/home/${VM_USERNAME}/sharedFolder


apt-get update
apt-get -y install git
apt-get -y install ansible
apt-get -y install vim
apt-get -y install docker.io
apt-get -y install docker-compose



su -c "source ${SHARED_FOLDER_PATH}/config_env.sh" ${VM_USERNAME}
su -c "source ${SHARED_FOLDER_PATH}/info.sh" ${VM_USERNAME}
