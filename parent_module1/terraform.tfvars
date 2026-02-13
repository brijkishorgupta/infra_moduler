rgs = {
  "rg1" = {
    name     = "brij1"
    location = "West Europe"
  }
}

vnet_name = {
  "vnet1" = {
    name                = "brij-vnet"
    resource_group_name = "brij1"
    location            = "West Europe"
    address_space       = ["10.0.0.0/16"]
  } 
}

subnet = {
  "subnet_name" = {
    name                 = "brij-subnet"
    resource_group_name  = "brij1"
    virtual_network_name = "brij-vnet"
    address_prefixes     = ["10.0.1.0/24"]

  }
}
pip_name = {
  "pip1" = {
    name                = "brij-pip"
    resource_group_name = "brij1"
    location            = "West Europe"
    allocation_method   = "Static"

  }
}
