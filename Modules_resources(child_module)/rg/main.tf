resource "azurerm_resource_group" "testing" {
  for_each = var.rgname
  name     = each.value.name
  location = each.value.location
}