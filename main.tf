provider "aws" {
region = "us-east-1"
}
resource "aws_instance" "one" {
count           = 1 
  ami           = "ami-0866a3c8686eaeeba"
  instance_type = "t3.micro"
  tags = {
    Name = "dev-server"
  }
}
