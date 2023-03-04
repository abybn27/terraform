terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.57.0"
    }
  }


    required_version = ">= v1.3.9"
}

provider "aws" {
  profile = "default"
  region  = "ap-south-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-09ba48996007c8b50"
  instance_type = "t2.micro"

  tags = {
    Name = "TF1"
  }
}
