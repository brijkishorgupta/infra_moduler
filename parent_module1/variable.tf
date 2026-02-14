variable "rgs" {
  # type = map(object({
  #   name     = string
  #   location = string
  # }))


}
variable "vnet_name" {

  # type = map(object({
  #   name                = string
  #   resource_group_name = string
  #   location            = string
  #   address_space       = list(string)
  # }))
}

variable "subnet" {

  # type = map(object({
  #   name                 = string
  #   resource_group_name  = string
  #   virtual_network_name = string
  #   address_prefixes     = list(string)
  # }))
}
variable "pip_name" {

  # type = map(object({

  #   name                = string
  #   resource_group_name = string
  #   location            = string
  #   allocation_method   = string
  # }))

}
  variable "nic" {}
  variable "vm" {}
#   variable "network_interface_ids" {
#   type = list(string)
# }
