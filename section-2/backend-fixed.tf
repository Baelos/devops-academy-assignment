provider "aws" {
  region = "eu-west-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "devops-academy-example"
}

terraform {
  backend "s3" {
    bucket         = "terraform-state-storage"
    key            = "devopsacademy/infra.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
