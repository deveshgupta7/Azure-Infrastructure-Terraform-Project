resource "azurerm_mssql_server" "main" {
  name                         = var.server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.admin_login
  administrator_login_password = var.admin_password

  identity {
    type = "SystemAssigned"
  }

  tags = var.tags
}

resource "azurerm_mssql_database" "main" {
  name                = var.db_name
  server_id           = azurerm_mssql_server.main.id
  collation           = "SQL_Latin1_General_CP1_CI_AS"
  sku_name            = var.sku_name
  max_size_gb         = var.max_size_gb
  zone_redundant      = false
  tags                = var.tags
  transparent_data_encryption {
    key_vault_key_id = var.cmk_key_id
  }
}