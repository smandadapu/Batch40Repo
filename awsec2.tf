provider "aws" {
  access_key = "AKIAIZVIWQ5EJT2Z3PNA"
  secret_key = "gWpQbRyQFNXThMRCAyNOc1duk2WPE9Nj+5eCM1R7"
  region     = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-5b673c34"
  instance_type = "t2.xlarge"
}