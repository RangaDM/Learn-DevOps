terraform {
  backend "s3" {
    bucket = "ranga-s3-no-1"
    key    = "sts/terraform.tfstate"
    region = "us-east-1"
  }
}
