#!/bin/bash

is_wsl=$(uname -a |grep -i microsoft)
if [[ -n $is_wsl ]]; then
  export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"
fi


current_dir=$(( pwd ))
export ANSIBLE_CONFIG=$current_dir/ansible/ansible.cfg

#substitute variables
/bin/bash ./substitute.sh


cd ./vagrant
vagrant up

cd ../