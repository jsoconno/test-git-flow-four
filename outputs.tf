output "resource_group_id" {
  description = "The ID of the resource group"
  value       = azurerm_resource_group.this.id
}

output "resource_group_name" {
  description = "The name of the resource group"
  value       = azurerm_resource_group.this.name
}

output "resource_group_location" {
  description = "The location of the resource group"
  value       = azurerm_resource_group.this.location
}

output "key_vault_id" {
  description = "The ID of the key vault"
  value       = azurerm_key_vault.this.id
}

output "key_vault_name" {
  description = "The name of the key vault"
  value       = azurerm_key_vault.this.name
}

output "key_vault_uri" {
  description = "The URI of the key vault"
  value       = azurerm_key_vault.this.vault_uri
}