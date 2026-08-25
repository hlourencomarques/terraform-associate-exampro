terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.46.0"
    }
  }
}

provider "aws" {
  profile = "aws-hlourencomarques-terraform"
  region  = "us-east-1"
}
