#get name of VirtualBox host-only network
$hostonlynetname = vboxmanage list  hostonlyifs | findstr "^Name:"
$hostonlynetname = $hostonlynetname.Split(":")[1]
$hostonlynetname = $hostonlynetname.trim()

#set the network name
(Get-Content -Path .\terraform\demo.tfvars -raw) -replace '<<HOSTONLYNETADAPTER>>',"$hostonlynetname" | Set-Content -Path .\terraform\demo.tfvars

#run terraform
cd .\terraform
terraform init
terraform apply -auto-approve -var-file "demo.tfvars"

cd ../
