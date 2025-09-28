# terraform {
#   required_providers {
#     aws = {
#       source = "hashicorp/aws"
#       version = "5.98.0"
#     }
#   }

#   backend "s3" {
    
#   }
# }

# provider "aws" {
#   # Configuration options
# }
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.98.0"
    }
  }

  backend "s3" {
    bucket       = "jd-aws-s3-bucket-demo"  # your S3 bucket
    key          = "tf-vars-demo"           # path for state file
    region       = "us-east-1"              # AWS region
    encrypt      = true                      # enable server-side encryption
    use_lockfile = true                      # avoid parallel state writes
  }
}

provider "aws" {
  region = "us-east-1"  # needed for AWS provider operations
}
