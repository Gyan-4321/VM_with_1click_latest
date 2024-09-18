module "rg" {
  source = "../Child_modules/RG"
  rg     = var.rg
}

module "vnet" {
  source = "../Child_modules/VNET"
  vnet   = var.vnet
  depends_on = [ module.rg ]
}

module "subnet" {
  source = "../Child_modules/SUBNET"
  subnet = var.subnet
  depends_on = [ module.vnet ]
}

module "nic" {
  source = "../Child_modules/NIC"
  nic    = var.nic
  depends_on = [ module.subnet ]

}

module "vm" {
  source = "../Child_modules/VM"
  vm     = var.vm
  depends_on = [ module.subnet,module.nic ]

}