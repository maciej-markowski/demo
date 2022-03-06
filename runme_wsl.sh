#!/bin/bash

export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"

current_dir=$(( pwd ))
export ANSIBLE_CONFIG=$current_dir/ansible/ansible.cfg

cd ./vagrant
vagrant up

cd ../