output "resource_group_name" {
  value = module.rg.name
}

output "vnet_name" {
  value = module.vnet.name
}

output "subnet_id" {
  value = module.subnet.id
}

output "vm_public_ip" {
  value = module.vm.public_ip
}
