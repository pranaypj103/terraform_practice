resource "aws_instance" "example-1" {
  ami           = "ami-08ee1453725d19cdb"
  instance_type = "t2.micro"
  key_name      = "linux1"
  count         = "1"
  tags = {
    Name = "InstanceExample1"
  }
  user_data       = file("sample.sh")
  security_groups = [aws_security_group.example_sg.name]
}
