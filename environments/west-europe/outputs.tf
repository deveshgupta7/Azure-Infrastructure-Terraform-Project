output "resource_group_name" {
  value = azurerm_resource_group.main.name
}

output "vnet_id" {
  value = module.network.vnet_id
}

output "app_service_plan_id" {
  value = module.app_service_plan.app_service_plan_id
}

output "app_bff_name" {
  value = module.app_bff.app_service_name
}

output "app_middleware_name" {
  value = module.app_middleware.app_service_name
}

output "sql_server_id" {
  value = module.sql.sql_server_id
}

output "sql_database_id" {
  value = module.sql.sql_database_id
}

output "key_vault_id" {
  value = module.key_vault.key_vault_id
}

output "cmk_key_id" {
  value = module.key_vault.cmk_key_id
}
