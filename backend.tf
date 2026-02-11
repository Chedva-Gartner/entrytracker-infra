terraform {
  backend "s3" {
    bucket         = "tf-state-eks"
    key            = "dev/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "tf-locks"
    encrypt        = true
  }
}







