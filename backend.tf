terraform {
  backend "s3" {
    bucket         = "tf-state-eks"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "tf-locks"
    encrypt        = true
  }
}
  provider "aws" {
    region = "ap-south-1"
}


