provider "aws" {
  access_key = "AKIAIZVIWQ5EJT2Z3PNA"
  secret_key = "gWpQbRyQFNXThMRCAyNOc1duk2WPE9Nj+5eCM1R7"
  region     = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-5b673c34"
  instance_type = "t2.micro"
  security_groups = [
        "${aws_security_group.allow-ssh.name}",
        "${aws_security_group.allow-docker.name}",
        "${aws_security_group.allow-all-http-https.name}",
    ]
    key_name="REDHATSAMPLE7"
}

resource "aws_security_group" "allow_all" {
  name = "allow_all"
  description = "Allow all inbound traffic"

  ingress {
      from_port = 0
      to_port = 8080
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
      from_port = 0
      to_port = 8080
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }
}