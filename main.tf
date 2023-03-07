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

#Create security group with firewall rules
resource "aws_security_group" "aws_mum-sg-2023" {
  name        = var.security_group
  description = "security group for Ec2 instance"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

 ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags= {
    Name = var.security_group
  }
}

resource "aws_instance" "myFirstInstance" {
  ami           = var.ami_id
  key_name = var.key_name
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.aws_mum-sg-2023.id]
  tags= {
    Name = var.tag
  }
}

# Create Elastic IP address
/*
resource "aws_eip" "myFirstInstance" {
vpc      = true
  instance = aws_instance.myFirstInstance.id
tags= {
    Name = "my_elastic_ip"
  }
}
*/
