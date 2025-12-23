# Get current client configuration
data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

resource "azurerm_key_vault" "this" {
  name                       = "${var.key_vault_name}-${random_string.suffix.result}"
  location                   = azurerm_resource_group.this.location
  resource_group_name        = azurerm_resource_group.this.name
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  sku_name                   = "standard"
  soft_delete_retention_days = 7
  purge_protection_enabled   = false

  # Enable RBAC for access management
  enable_rbac_authorization = true

  tags = var.tags
}

# Generate random suffix for globally unique key vault name
resource "random_string" "suffix" {
  length  = 8
  special = false
  upper   = false
}

# Assign Key Vault Administrator role to current user
resource "azurerm_role_assignment" "kv_admin" {
  scope                = azurerm_key_vault.this.id
  role_definition_name = "Key Vault Administrator"
  principal_id         = data.azurerm_client_config.current.object_id
}