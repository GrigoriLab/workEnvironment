#!/bin/bash -x
VM_USERNAME=ubuntu
SHARED_FOLDER_PATH=/home/${VM_USERNAME}/sharedFolder
cp -r ${SHARED_FOLDER_PATH}/scripts $HOME/
echo "export PATH=\$HOME/scripts:\$PATH" >> $HOME/.bashrc
mkdir -p $HOME/workspace
