terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.6.1"
    }
    aws = {
      source = "hashicorp/aws"
      version = "5.46.0"
    }
  }
}


provider "aws" {
  # Configuration options
}

provider "random" {
  # Configuration options
}

resource "aws_s3_bucket" "example" {
  # Bucket Naming Rules
  # https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html

  bucket = random_string.bucket_name.result

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

# https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string
resource "random_string" "bucket_name" {
  lower = true
  upper = false
  length = 16
  special = false
}


output "random_bucket_name"{
  value = random_string.bucket_name.result 
}