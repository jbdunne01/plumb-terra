terraform {
  backend "s3" {
    bucket = "jbd-test-terraform-state"
    key    = "path/to/my/key"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-40d28157"
  instance_type = "t2.micro"
}