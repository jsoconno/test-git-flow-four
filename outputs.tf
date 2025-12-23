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

output "virtual_network_id" {
  description = "The ID of the virtual network"
  value       = azurerm_virtual_network.this.id
}

output "virtual_network_name" {
  description = "The name of the virtual network"
  value       = azurerm_virtual_network.this.name
}

output "subnet_id" {
  description = "The ID of the private endpoints subnet"
  value       = azurerm_subnet.private_endpoints.id
}

output "private_endpoint_id" {
  description = "The ID of the Key Vault private endpoint"
  value       = azurerm_private_endpoint.keyvault.id
}

output "private_dns_zone_id" {
  description = "The ID of the Key Vault private DNS zone"
  value       = azurerm_private_dns_zone.keyvault.id
}