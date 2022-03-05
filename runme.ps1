##get name of VirtualBox host-only network
#$hostonlynetname = vboxmanage list  hostonlyifs | findstr "^Name:"
#$hostonlynetname = $hostonlynetname.Split(":")[1]
#$hostonlynetname = $hostonlynetname.trim()
#
##set the network name
#(Get-Content -Path .\vagrant\vagrantfile -raw) -replace '<<HOSTONLYNETADAPTER>>',"$hostonlynetname" | Set-Content -Path .\vagrant\vagrantfile

#run terraform
cd .\vagrant
vagrant up

cd ../
