# Demo project                  #

Project requirements:
  Virtual machine with installed OS from RedHat family (RHEL, CentOS, Fedora) with the following software installed:
   - python3
   - ansible
   - docker/podman
   - cockpit behind nginx reverse proxy

  VM should be prepared and configured using IaaC tools (preferably Vagrant/Terraform, Ansible) - we should be able to recreate this VM with the same configuration in our environment by just using configuration files prepared by the candidate.

  The project should have a simple README explaining how to set up the VM from scratch.


# Usage #


(Linux)
runme.sh

(Windows subsystem for Linux)
runme_wsl.sh



# Prerequsites #


Installed and executables added to PATH:
- vagrant
- virtualbox
- ansible
For Windows subsystem for Linux, vagrant and ansible are installed in WSL, virtualbox on Windows.

Place your public key in openssh format into files directory as key.pub



 # known issues #

Virtualbox enforces hostonly ip range to 192.168.56.0/21.
Valid ranges can be modified in the /etc/vbox/networks.conf file. (For both WSL and Linux).
https://www.virtualbox.org/manual/ch06.html#network_hostonl