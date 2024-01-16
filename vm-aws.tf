resource "aws_key_pair" "key" {
  key_name   = "aws-key-pipelines"
  public_key = var.aws_key_pub
}

resource "aws_instance" "vm" {
  ami                         = "ami-0c7217cdde317cfec"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.key.key_name
  subnet_id                   = aws_subnet.subnet.id
  vpc_security_group_ids      = [aws_security_group.security_group.id]
  associate_public_ip_address = true

  tags = {
    Name = "vm-terraform"
  }
}