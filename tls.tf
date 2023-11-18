resource "tls_private_key" "backend" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "backend" {
  content  = tls_private_key.backend.private_key_openssh
  filename = "nexuskey.pem"
}

resource "aws_key_pair" "backend" {
  key_name   = "deployer-key"
  public_key = tls_private_key.backend.public_key_openssh
}