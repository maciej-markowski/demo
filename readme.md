#################################
# Demo project                  #
#################################

Project requirements:
  Virtual machine with installed OS from RedHat family (RHEL, CentOS, Fedora) with the following software installed:
   - python3
   - ansible
   - docker/podman
   - cockpit behind nginx reverse proxy

  VM should be prepared and configured using IaaC tools (preferably Vagrant/Terraform, Ansible) - we should be able to recreate this VM with the same configuration in our environment by just using configuration files prepared by the candidate.

  The project should have a simple README explaining how to set up the VM from scratch.


#################################
# Prerequisites                 #
#################################

- Windows machine with installed ansible, terraform and VirtualBox
- VirtualBox installation directory added to PATH.

#################################
# Usage                         #
#################################

run init.ps powershell script


#################################
# Description                   #
#################################


check  vboxmanage list hostonlyifs, create if not exists
check ip range, based on that set demo-hostonly-network var

#################################
# TO DO                         #
#################################

add NAT network, configure as default gw to allow network connection


# END mm@2022
