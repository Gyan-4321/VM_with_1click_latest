resource "azurerm_public_ip" "testing" {
    for_each = var.pip90
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  allocation_method   = "Static"
  sku                 = "Standard"
}
