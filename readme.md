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
*see prerequisites*

> runme.sh





# Prerequsites #

0. Machine with *Linux* or *Windows + Windows Subsystem for Linux enabled*

1. Installed and executables added to PATH: ##
   - vagrant
   - virtualbox
   - ansible
For Windows subsystem for Linux, vagrant and ansible are installed in WSL, Virtualbox on Windows.
   - For WSL2 additional plugin is required:
   > vagrant plugin install virtualbox_WSL2

2. Place your public key in openssh format into files directory as key.pub

3. If you want, you can adjust variables in *variable* file

4. Add <<VM_NAME>>.example.com to /etc/hosts so it can be resolved to whatever IP address is assigned to VM i.e.:
> 192.168.57.10	centos-demo.example.com www.centos-demo.example.com


 # known issues #

1. Windows Subsystem for Linux by default mounts C drive without 'metadata' flag - therefore setting proper permissions
   for private key is not possible. 
   Please either clone repo in linux filesystem (eg. /home/) or make sure metadata flag is present:
```
$ sudo vim /etc/wsl.conf
    [automount]
    enabled = true
    root = /
    options = "metadata"
    mountFsTab = true
```
   and restart wsl.
   reference: https://www.schakko.de/2020/01/10/fixing-unprotected-key-file-when-using-ssh-or-ansible-inside-wsl/


2. Virtualbox enforces hostonly ip range to 192.168.56.0/21.
   Valid ranges can be modified in the /etc/vbox/networks.conf file. (For both WSL and Linux).
   reference: https://www.virtualbox.org/manual/ch06.html#network_hostonly
