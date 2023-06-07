# Live 2 do aquecimento para imersão cloud 
terraform {
    required_providers {
        aws = {
            source = "hashicorpo/aws"
            version = "~> 4.16"
        }
    }

    required_version = ">= 1.2.0"
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "s3_bucket" {
    bucket = "tcb-app-qa-jr10"
  
}