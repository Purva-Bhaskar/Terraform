provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "first" {
    ami = "ami-0f3caa1cf4417e51b"
    instance_type = "t2.micro"
    tags = {
        Name = "EC2-terraform"
    }
}