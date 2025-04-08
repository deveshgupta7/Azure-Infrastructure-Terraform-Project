output "app_service_id" {
  value = azurerm_app_service.app.id
}

output "app_service_name" {
  value = azurerm_app_service.app.name
}

output "app_service_identity" {
  value = azurerm_app_service.app.identity[0].principal_id
}