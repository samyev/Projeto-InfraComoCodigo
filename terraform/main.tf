# terraform block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.59.0"
    }
  }
  required_version = ">=1.0.0"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}