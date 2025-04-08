output "key_vault_id" {
  value = azurerm_key_vault.main.id
}

output "cmk_key_id" {
  value = azurerm_key_vault_key.cmk.id
}