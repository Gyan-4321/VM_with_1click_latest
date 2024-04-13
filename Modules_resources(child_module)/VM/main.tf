resource "azurerm_linux_virtual_machine" "fortest" {
  for_each = var.vm90
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  admin_password = "Radhey@654321"
  disable_password_authentication = false
  network_interface_ids = [
    data.azurerm_network_interface.testing.id
  ]

  

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}