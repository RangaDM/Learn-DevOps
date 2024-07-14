provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "rd-ins" {
  ami = "ami-04a81a99f5ec58529"
  instance_type = "t2.micro"
  tags = {
    Name = "ranga-ec2-no-1"
  }
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "ranga-s3-no-1"
}
