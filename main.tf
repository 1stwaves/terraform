provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "web-app" {
    ami = "ami-07c9c7aaab42cba5a"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-007ae066d890f9744"]
    subnet_id = "subnet-03d05c6942a83c97a"
    key_name = "ollion-umam"
    tags = {
      Name = "web-app"
      CreationDate = formatdate("DD MMM YYYY hh:mm ZZZ",timestamp())
      Env = "Production"
    }
}
