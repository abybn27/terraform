
variable "instance_type" {}

variable "tag_name" {}

variable "key_name" { 
    description = " SSH keys to connect to ec2 instance" 
    default     =  "coit" 
}

variable "security_group" { 
    description = "Name of security group" 
    default     = "aws_mum-sg-2023" 
}

variable "ami_id" { 
    description = "AMI for Ubuntu Ec2 instance" 
    default     = "ami-09ba48996007c8b50" 
}


