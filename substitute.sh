. variables
#vagrant
sed -i "s/<vm_name>/$VM_NAME/" ./vagrant/vars/demo.yml
sed -i "s/<vm_ipv4addres>/$VM_IPV4ADDR/" ./vagrant/vars/demo.yml
sed -i "s/<vm_ram>/$VM_RAM/" ./vagrant/vars/demo.yml
sed -i "s/<vm_cpu>/$VM_CPU/" ./vagrant/vars/demo.yml

#ansible
sed -i "s/<vm_name>/$VM_NAME/" ./ansible/group_vars/all