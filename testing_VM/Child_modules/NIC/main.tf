data "azurerm_subnet" "testing"{
    for_each = var.nic
    name = each.value.subnet_name
    resource_group_name = each.value.resource_group_name
    virtual_network_name = each.value.virtual_network_name
}


resource "azurerm_network_interface" "testing" {
    for_each = var.nic
    name = each.value.name
    location = each.value.location
    resource_group_name = each.value.resource_group_name
    
    ip_configuration {
        name = "private"
        subnet_id = data.azurerm_subnet.testing[each.key].id
        private_ip_address_allocation = "Dynamic"
    }
}