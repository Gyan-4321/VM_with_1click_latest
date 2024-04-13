data "azurerm_subnet" "testing" {
  name                 = "internal"
  virtual_network_name = "fortest-network"
  resource_group_name  = "raju-RG"
}