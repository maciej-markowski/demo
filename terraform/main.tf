terraform {
  required_providers {
    virtualbox = {
      source = "terra-farm/virtualbox"
      version = "0.2.2-alpha.1"
    }
  }
}

provider "virtualbox" {
  # Configuration options
  
}

resource "virtualbox_vm" "demo-centos" {
  count     = 1
  name      = format("demo-centos-%02d", count.index + 1)
  image     = "https://app.vagrantup.com/generic/boxes/centos7/versions/3.6.8/providers/virtualbox.box"
  cpus      = 2
  memory    = "1024 mib"

  network_adapter {
    type           = "hostonly"
    host_interface = var.demo-hostonly-network
  }
}

