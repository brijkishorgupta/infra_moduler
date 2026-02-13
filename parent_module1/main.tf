module "rgs" {
  source                 = "../child_module/rgs"

rgs = var.rgs

}

module "network" {
  depends_on = [ module.rgs ]

 source =  "../child_module/network"

 vnet = var.vnet_name

}

module "subnet" {

depends_on = [ module.rgs, module.network ]

  source = "../child_module/subnet"
  subnet = var.subnet
  
}
module "public_ip" {
  depends_on = [ module.rgs, module.network, module.subnet ]

  source = "../child_module/public_ip"
  pip = var.pip_name
  
}

# module "frontend_vm" {
#     depends_on = [ module.frontend_subnet ]
#   source                 = "../Module/vm"
#   nic_name               = "nic-frontend"
#   location               = "centralindia"
#   resource_group_name    = "rg-brij"
#   subnet_id              = "/subscriptions/becf41a0-446d-42d0-92b7-09e1ab420ad2/resourceGroups/rg-brij/providers/Microsoft.Network/virtualNetworks/vnet-brij/subnets/frontend_subnet"
#   vm_name                = "vm-brij"
#   vm_size                = "Standard_B2s"
#   admin_username         = "adminbrij"
#   admin_password         = "Khushali@1987"
#   image_publisher        = "Canonical"
#   image_offer            = "UbuntuServer"
#   image_sku              = "18.04-LTS"
#   image_version          = "latest"
# }
# module "backend_vm" {
#     depends_on = [ module.backend_subnet ]
#   source                 = "../Module/vm"
#   nic_name               = "nic-backend"
#   location               = "centralindia"
#   resource_group_name    = "rg-brij"
#   subnet_id              = "/subscriptions/becf41a0-446d-42d0-92b7-09e1ab420ad2/resourceGroups/rg-brij/providers/Microsoft.Network/virtualNetworks/vnet-brij/subnets/backend_subnet"
#   vm_name                = "vm-backend"
#   vm_size                = "Standard_B2s"
#   admin_username         = "adminbrij"
#   admin_password         = "Khushali@1987"
#   image_publisher        = "Canonical"
#   image_offer            = "UbuntuServer"
#   image_sku              = "18.04-LTS"
#   image_version          = "latest"

# }
# module "sql_server" {
#   source                 = "../Module/sql_server"
#   sql_server_name        = "sqlserverbrij"
#   resource_group_name    = "rg-brij"
#   location               = "centralindia"
#   administrator_login          = "adminbrij"
#   administrator_login_password = "Khushali@1987"
# }
# module "sql_database" {
#   source                 = "../Module/sql_database"
#   sql_database_name      = "sqldbbrij"
#   sql_server_id          = "/subscriptions/becf41a0-446d-42d0-92b7-09e1ab420ad2/resourceGroups/rg-brij/providers/Microsoft.Sql/servers/sqlserverbrij"
# }