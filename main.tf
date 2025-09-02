module "rg" {
  source              = "./Child/resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "vnet" {
  source              = "./Child/virtual_network"
  vnet_name           = var.vnet_name
  location            = module.rg.location
  resource_group_name = module.rg.name
}

module "subnet" {
  source              = "./Child/subnet"
  subnet_name         = var.subnet_name
  resource_group_name = module.rg.name
  vnet_name           = module.vnet.name
}

module "vm" {
  source              = "./Child/virtual_machine"
  vm_name             = var.vm_name
  resource_group_name = module.rg.name
  location            = module.rg.location
  subnet_id           = module.subnet.id
  admin_username      = var.admin_username
  admin_password      = var.admin_password
}
