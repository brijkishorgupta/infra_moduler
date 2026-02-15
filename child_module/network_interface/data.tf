data "azurerm_subnet" "subnet" {
  name                 = "frontend-subnet"
  virtual_network_name = "brij-vnet"
  resource_group_name  = "brij1"
}
# data "azurerm_subnet" "subnet" {
#   name                 = "backend-subnet"
#   virtual_network_name = "brij-vnet"
#   resource_group_name  = "brij1"
# }
data "azurerm_public_ip" "pip" {
  name                = "brij-pip"
  resource_group_name = "brij1"
}