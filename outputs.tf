output "storage_account_id" {
  value = azurerm_storage_account.first_storage_account.id
}

output "bucket_account_id" {
  value = aws_s3_bucket.first_bucket.id
}
