provider "aws" {
region = "us-east-1"
}
resource "aws_instance" "one" {
  for_each      = toset(["dev-server", "test-server", "prod-server", ])
  ami           = "ami-052064a798f08f0d3"
  instance_type = "t3.micro"
  tags = {
    Name = "${each.key}"
  }
}
