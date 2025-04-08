provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

module "network" {
  source              = "../../modules/network"
  vnet_name           = var.vnet_name
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  tags                = var.tags
}

module "key_vault" {
  source              = "../../modules/key_vault"
  name                = var.kv_name
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  tenant_id           = var.tenant_id
  object_id           = var.object_id
  tags                = var.tags
}

module "app_service_plan" {
  source              = "../../modules/app_service_plan"
  name                = var.app_service_plan_name
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  sku_tier            = var.sku_tier
  sku_size            = var.sku_size
  tags                = var.tags
}

module "app_bff" {
  source              = "../../modules/app_service"
  name                = var.app_bff_name
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  app_service_plan_id = module.app_service_plan.app_service_plan_id
  tags                = var.tags
}

module "app_middleware" {
  source              = "../../modules/app_service"
  name                = var.app_middleware_name
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  app_service_plan_id = module.app_service_plan.app_service_plan_id
  tags                = var.tags
}

module "sql" {
  source              = "../../modules/sql_database"
  server_name         = var.sql_server_name
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  admin_login         = var.sql_admin_login
  admin_password      = var.sql_admin_password
  db_name             = var.sql_db_name
  cmk_key_id          = module.key_vault.cmk_key_id
  tags                = var.tags
}

module "private_dns" {
  source              = "../../modules/private_dns"
  resource_group_name = azurerm_resource_group.main.name
  vnet_id             = module.network.vnet_id
  tags                = var.tags
}