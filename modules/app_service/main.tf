resource "azurerm_app_service" "app" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = var.app_service_plan_id

  site_config {
    always_on = true
  }

  app_settings = {
    WEBSITE_VNET_ROUTE_ALL = "1"
    SCM_DO_BUILD_DURING_DEPLOYMENT = "false"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = var.tags
}