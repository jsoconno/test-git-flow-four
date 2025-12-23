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

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the resource group"
  default = {
    Environment = "Development"
    ManagedBy   = "Terraform"
  }
}