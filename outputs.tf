output "bucket_account_id" {
  value = aws_s3_bucket.first_bucket.id
}

output "subnet_id" {
  value = aws_subnet.subnet.id
}

output "security_group_id" {
  value = aws_security_group.security_group.id
}

output "vm_ip" {
  value = aws_instance.vm.public_ip
}
