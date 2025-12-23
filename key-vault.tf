# Generate random suffix for globally unique key vault name
resource "random_string" "suffix" {
  length  = 8
  special = false
  upper   = false
}

resource "azurerm_key_vault" "this" {
  name                       = "${var.key_vault_name}-${random_string.suffix.result}"
  location                   = azurerm_resource_group.this.location
  resource_group_name        = azurerm_resource_group.this.name
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  sku_name                   = "standard"
  soft_delete_retention_days = 90
  purge_protection_enabled   = true

  # Enable RBAC for access management (required for security compliance)
  enable_rbac_authorization = true

  # Disable public network access to force private endpoint usage
  public_network_access_enabled = false

  # Network ACLs to restrict access - default deny with Azure Services bypass
  network_acls {
    bypass         = "AzureServices"
    default_action = "Deny"
  }

  # Enable diagnostic settings for security monitoring
  tags = merge(var.tags, {
    Security   = "PrivateEndpoint"
    Compliance = "AzureSecurityBenchmark"
  })
}