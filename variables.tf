variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
  default     = "rg-example"
}

variable "location" {
  type        = string
  description = "The Azure region where the resource group will be created"
  default     = "East US"
}

variable "key_vault_name" {
  type        = string
  description = "The name of the key vault"
  default     = "kv-example"
}

variable "vnet_name" {
  type        = string
  description = "The name of the virtual network"
  default     = "vnet-example"
}

variable "vnet_address_space" {
  type        = list(string)
  description = "The address space for the virtual network"
  default     = ["10.0.0.0/16"]
}

variable "subnet_address_prefixes" {
  type        = list(string)
  description = "The address prefixes for the subnet"
  default     = ["10.0.1.0/24"]
}

variable "log_retention_days" {
  type        = number
  description = "Log retention period in days for compliance"
  default     = 90
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the resource group"
  default = {
    Environment = "Development"
    ManagedBy   = "Terraform"
  }
}