resource "azurerm_network_interface" "fortest" {
  for_each = var.nic90
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.testing.id
    private_ip_address_allocation = "Dynamic"
    
  }
}

