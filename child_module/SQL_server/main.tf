resource "azurerm_mssql_server" "SQL_server" {

  for_each = var.SQL_server
  name                         = each.value.mssql_server_name
  resource_group_name          = each.value.resource_group_name
  location                     = each.value.location
  version                      = each.value.version
  administrator_login          = each.value.administrator_login
  administrator_login_password = each.value.administrator_login_password
}