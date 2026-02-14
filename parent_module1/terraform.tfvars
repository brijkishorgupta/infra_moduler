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
nic = {
  "nic1" = {
    name                = "brij-nic"
    resource_group_name = "brij1"
    location            = "West Europe"

    ip_configuration = {
    name                          = "internal"
    private_ip_address_allocation = "Dynamic"
    
  }
}
}
vm = {
  "vm1" = {
    name                = "brij-vm"
    resource_group_name = "brij1"
    location            = "West Europe"
    vm_size             = "Standard_D2s_v5"
    admin_username      = "azureuser"
    admin_password      = "P@ssw0rd1234!"
    disable_password_authentication = false

  }
}
