data "azurerm_subnet" "subnet" {
  name                 = "brij-subnet"
  virtual_network_name = "brij-vnet"
  resource_group_name  = "brij1"
}
data "azurerm_public_ip" "pip" {
  name                = "brij-pip"
  resource_group_name = "brij1"
}