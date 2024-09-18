rg = {
  rg1 = {
    name     = "rg50"
    location = "central india"
  }
}

vnet = {
  vnet1 = {
    name                = "vnet50"
    location            = "central india"
    resource_group_name = "rg50"
    address_space       = ["10.0.0.0/16"]
  }
}

subnet = {
  subnet1 = {
    name                     = "subnet50"
    resource_group_name = "rg50"
    virtual_network_name     = "vnet50"
    address_prefixes         = ["10.0.1.0/24"]

  }
}

nic = {
  nic1 = {
    name                     = "nic50"
    resource_group_name      = "rg50"
    location                 = "central india"
    subnet_name              = "subnet50"
    virtual_network_name     = "vnet50"
  }
}

vm = {
  vm1 = {
    vm_name             = "vm50"
    nic_name            = "nic50"
    resource_group_name = "rg50"
    location            = "central india"
    admin_username      = "Test654321"
    admin_password      = "Radhey@654321"
  }
}