output "vm_ip" {
  description = "IP da VM criada na Azure"
  value       = azurerm_linux_virtual_machine.vm.public_ip_address
}

output "storage_account_id" {
  description = "ID da Storage Account criada na Azure"
  value       = azurerm_storage_account.storage_account.id
}

output "sa_primary_access_key" {
  description = "Primary Access Key da Storage Account criada na Azure"
  value       = azurerm_storage_account.storage_account.primary_access_key
  sensitive   = true
}
