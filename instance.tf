provider "aws" {
    region = "us-east-1"
}

# resource "aws_instance" "fct-instance-1" {
#     for_each = toset(["jump server","Application server","db instance"])
#     instance_type = "t3.micro"
#     ami = "ami-0f3caa1cf4417e51b"
#     tags = {
#       Name = each.key
#     }
# }

resource "aws_instance" "fct-instance-1" {
        instance_type = "t3.micro"
        ami = "ami-0f3caa1cf4417e51b"
        count = 3
        tags = {
        Name = "web-server${count.index+1}"
        }
}