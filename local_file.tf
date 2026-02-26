resource "local_file" "foo" {
  content  = "Welcome to terraform "
  filename = "/home/ec2-user/file1.txt"
}