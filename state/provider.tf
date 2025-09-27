terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.98.0"
    }
  }
   backend "s3" {
    bucket = "jd-aws-s3-bucket-demo"
    key    = "jd-aws-s3-bucket-filename"
    region = "us-east-1"
    encrypt = true
    use_lockfile = true
  }
}

provider "aws" {
  # Configuration options
}