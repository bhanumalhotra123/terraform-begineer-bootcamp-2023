terraform {
  #backend "remote" {
  #  hostname = "app.terraform.io"
  #  organization = "ExamPro"

  #  workspaces {
  #    name = "terra-house-1"
  #  }
  #}
#   cloud {
#     organization = "Bhanumalhotra"
#     workspaces {
#       name = "terra-house-bhanuman"
#     }
#   }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.46.0"
    }
  }
}


provider "aws" {
}
provider "random" {
  # Configuration options
}

