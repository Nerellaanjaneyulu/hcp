provider "aws" {
    region = "us-east-1"
  
}

resource "aws_instance" "name" {
    count = length(var.instance_count)
    ami = "ami-052064a798f08f0d3"
    instance_type = var.instance_type[count.index]
    tags = {
        Name = var.instance_name[count.index]
    }
}


variable "instance_type" {
    default = ["t3.micro", "t3.small"]
}

variable "instance_name" {
  default = ["dev-server", "test-server"]
}
