data "azurerm_mssql_server" "sql_server" {
  name                = "brij-sql-server"
  resource_group_name = "brij1"
}