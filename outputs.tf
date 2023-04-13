# output "storage_account_id" {
#   value = azurerm_storage_account.first_storage_account.id
# }

# output "bucket_account_id" {
#   value = aws_s3_bucket.first_bucket.id
# }

# output "subnet_id" {
#   value = aws_subnet.subnet.id
# }

# output "security_group_id" {
#   value = aws_security_group.security_group.id
# }

output "subnet_id" {
  value = azurerm_subnet.subnet.id
}

output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

output "security_group_id" {
  value = azurerm_network_security_group.nsg.id
}