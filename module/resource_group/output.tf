output "rg_ids" {
  description = "Resource Group IDs"
  value       = { for k, v in azurerm_resource_group.rgs : k => v.id }
}

output "rg_names" {
  description = "Resource Group Names"
  value       = { for k, v in azurerm_resource_group.rgs : k => v.name }
}

output "rg_locations" {
  description = "Resource Group Locations"
  value       = { for k, v in azurerm_resource_group.rgs : k => v.location }
}
