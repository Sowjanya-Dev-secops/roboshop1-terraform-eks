terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.23.0"
    }
  }
  backend "s3" {
    bucket = "remote-state-sowji-dev1"
    key    = "roboshop-dev-eks1"
    region = "us-east-1"
    use_lockfile = true
    encrypt = true
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}