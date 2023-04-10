provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "ec2-tf" {
  ami           = "ami-060170b46555d1186"
  instance_type = "t2.micro"
  subnet_id     = "subnet-026ec8aeaccc57e01"
  key_name      = "ohio-keypair"
  associate_public_ip_address = true
  tags = {
    Name = "ec2-tf"
  }
}
