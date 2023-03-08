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


# Create EC2 instance
resource "aws_instance" "Instance-1" {
  ami           = var.ami_id
  key_name      = var.key_name
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  security_groups = var.security_group_ids

 tags= {
    Name        = Linux
    Environment = var.environment
    Project     = "ERL"
    Owner       = "SRE"
    CostCenter  = "ilogistics"
  }
}
