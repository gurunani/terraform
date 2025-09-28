backend "s3" {
bucket = "jd-aws-s3-bucket-prod"
key    = "tf-vars-demo"
region = "us-east-1"
encrypt = true
use_lockfile = true
}