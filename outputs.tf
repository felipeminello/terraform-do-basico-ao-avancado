output "aws_subnet_id" {
  description = "ID da Subnet criada na AWS"
  value       = aws_subnet.subnet.id
}

output "aws_security_group_id" {
  description = "ID da Security Group criada na AWS"
  value       = aws_security_group.security_group.id
}

output "azure_subnet_id" {
  description = "ID da Subnet criada na Azure"
  value       = azurerm_subnet.subnet.id
}

output "azure_security_group_id" {
  description = "ID da Network Security Group criada na Azure"
  value       = azurerm_network_security_group.nsg.id
}

output "vm_aws_ip" {
  description = "IP da máquina virtual criada na AWS"
  value       = aws_instance.vm.public_ip
}

output "vm_azure_ip" {
  description = "IP da máquina virtual criada na Azure"
  value       = azurerm_linux_virtual_machine.vm.public_ip_address
}