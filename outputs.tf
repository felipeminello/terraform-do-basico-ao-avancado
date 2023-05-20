output "vm_ip" {
  value = azurerm_linux_virtual_machine.vm.public_ip_address
}

output "subnet_id" {
  value = azurerm_subnet.subnet.id
}

output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

output "security_group_id" {
  value = azurerm_network_security_group.nsg.id
}

output "storage_account_id" {
  value = azurerm_storage_account.first_storage_account.id
}