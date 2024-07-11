provider "aws" {
  region = "us-east-1"
}

module "ec2" {
  source = "./modules/ec2"
  ami_value = "ami-04a81a99f5ec58529"
  instance_type_value = "t2.micro"
  instance_name = "Terraform Demo 2"
}