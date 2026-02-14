module "rgs" {
  source = "../child_module/rgs"
  rgs = var.rgs

}

module "network" {
  depends_on = [module.rgs]

  source = "../child_module/network"

  vnet = var.vnet_name

}

module "subnet" {

  depends_on = [module.rgs, module.network]

  source = "../child_module/subnet"
  subnet = var.subnet

}
module "public_ip" {
  depends_on = [module.rgs, module.network, module.subnet]

  source = "../child_module/public_ip"
  pip    = var.pip_name

}

module "network_interface" {
  depends_on = [module.rgs, module.network, module.subnet, module.public_ip]

  source = "../child_module/network_interface"
  nic = var.nic
}
module "virtual_machine" {
  depends_on = [ module.rgs, module.network, module.subnet, module.network_interface, module.public_ip ]

  source = "../child_module/virtual_machin"
  vm = var.vm  
}
