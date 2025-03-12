terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }

  backend "s3" {
    bucket = "81s-remote-venkat-state-dev"
    key    = "tfvars-dev"
    region = "us-east-1"
    dynamodb_table = "81s-locking-devv"
  }
  
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}