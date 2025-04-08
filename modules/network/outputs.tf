output "vnet_id" {
  value = azurerm_virtual_network.main.id
}

output "subnet_app_id" {
  value = azurerm_subnet.app.id
}

output "subnet_sql_id" {
  value = azurerm_subnet.sql.id
}