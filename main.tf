resource "azurerm_resource_group" "new-rg" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}
variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region where RG will be created"
  default     = "East US"
}
variable "tags" {
  type        = map(string)
  description = "Tags to assign to RG"
  default     = {
    environment = "dev"
    owner       = "abhishek"
  }
}
output "resource_group_name" {
  value = azurerm_resource_group.new-rg.name
}

output "resource_group_id" {
  value = azurerm_resource_group.new-rg.id
}