provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "one" {
  count         = length(var.instance_type)
  ami           = "ami-068c0051b15cdb816"
  instance_type = var.instance_type[count.index]
  tags = {
    Name = var.instance_name[count.index]
  }
}


variable "instance_type" {
  default = ["t3.micro"]
}

variable "instance_name" {
  default = ["Ansible", "dev-1", "dev-2", "test-1", "test-2"]
}

