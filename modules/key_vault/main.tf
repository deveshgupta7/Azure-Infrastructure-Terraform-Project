resource "azurerm_key_vault" "main" {
  name                        = var.name
  location                    = var.location
  resource_group_name         = var.resource_group_name
  tenant_id                   = var.tenant_id
  sku_name                    = "standard"
  purge_protection_enabled    = true
  enabled_for_disk_encryption = true
  enabled_for_template_deployment = true

  access_policy {
    tenant_id = var.tenant_id
    object_id = var.object_id

    key_permissions = [
      "get",
      "create",
      "list",
      "update",
      "wrapKey",
      "unwrapKey"
    ]
  }

  tags = var.tags
}

resource "azurerm_key_vault_key" "cmk" {
  name         = "sql-cmk"
  key_vault_id = azurerm_key_vault.main.id
  key_type     = "RSA"
  key_size     = 2048
  key_opts     = ["encrypt", "decrypt", "wrapKey", "unwrapKey"]
  tags         = var.tags
}