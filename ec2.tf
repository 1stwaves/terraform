resource "aws_instance" "umam-ec2" {
  ami = "ami-04b6019d38ea93034"
  instance_type = "t2.micro"
}