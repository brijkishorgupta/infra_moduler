resource "azurerm_linux_virtual_machine" "vm" {
    for_each = var.vm
    name = each.value.name
    resource_group_name = each.value.resource_group_name
    location = each.value.location
    size = each.value.vm_size
    admin_username = each.value.admin_username
    admin_password = each.value.admin_password
  disable_password_authentication = each.value.disable_password_authentication

    network_interface_ids = [data.azurerm_network_interface.nic.id]

 os_disk {
    caching = "ReadWrite"
    storage_account_type = "Standard_LRS"
    }
  source_image_reference {
    offer = "Canonical"
    publisher = "0001-com-ubuntu-server-jammy"
    sku = "22_04-lts"   
    version = "latest"
  }
}