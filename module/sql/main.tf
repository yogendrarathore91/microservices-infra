resource "azurerm_mssql_server" "sql" {
  for_each                     = var.sql_servers
  name                         = each.value.server_name
  resource_group_name          = each.value.rg_name
  location                     = each.value.location
  version                      = "12.0"
  administrator_login          = each.value.admin_login
  administrator_login_password = each.value.admin_pass
}

resource "azurerm_mssql_database" "db" {
  for_each  = var.sql_dbs
  name      = each.value.db_name
  server_id = azurerm_mssql_server.sql[each.value.server_key].id
  sku_name  = "S0"
}
