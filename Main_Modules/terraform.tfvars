rgname = {
  RG1 = {
    name     = "raju-RG"
    location = "central india"
  }
}


vnet90 = {
  vnet1 = {
    name                = "fortest-network"
    address_space       = ["10.0.0.0/16"]
    location            = "central india"
    resource_group_name = "raju-RG"
  }

}

subnet90 = {

  testsubnet = {
    name                 = "internal"
    resource_group_name  = "raju-RG"
    virtual_network_name = "fortest-network"
    address_prefixes     = ["10.0.2.0/24"]
  }

}

nic90 = {
  nictest = {
    name                = "fortest-nic"
    location            = "central india"
    resource_group_name = "raju-RG"
    

  }
}

vm90 = {
  vm1 = {
    name                = "myfirstvm"
    resource_group_name = "raju-RG"
    location            = "central india"

  }
}

nsg90 = {

  sg1 = {
    name                = "myfirstnsg"
    resource_group_name = "raju-RG"
    location            = "central india"

  }
}

pip90 = {
  pip1 = {
    name                = "public-ip1"
    resource_group_name = "raju-RG"
    location            = "central india"
  }
}