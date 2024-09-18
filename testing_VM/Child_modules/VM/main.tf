data "azurerm_network_interface" "testing" {
for_each = var.vm
name = each.value.nic_name
resource_group_name = each.value.resource_group_name

}

resource "azurerm_linux_virtual_machine" "testing" {
    for_each = var.vm
    name = each.value.vm_name
    resource_group_name = each.value.resource_group_name
    location = each.value.location
    size = "Standard_B1s"
    network_interface_ids = [data.azurerm_network_interface.testing[each.key].id]
    admin_username = each.value.admin_username
    admin_password = each.value.admin_password
    disable_password_authentication = false

    os_disk {
        caching = "ReadWrite"
        storage_account_type = "Standard_LRS"
        }

    source_image_reference {
        publisher = "Canonical"
        offer = "0001-com-ubuntu-server-jammy"
        sku = "22_04-lts"
        version = "latest"
    }
    
}