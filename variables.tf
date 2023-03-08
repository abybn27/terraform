
variable "instance_type" {}

variable "tag" {}

variable "key_name" { 
    description = " SSH keys to connect to ec2 instance" 
    default     =  "coit" 
}

variable "security_group" { 
    description = "Name of security group" 
    default     = " " 
}

variable "ami_id" { 
    description = "AMI for Ubuntu Ec2 instance" 
    default     = "ami-09ba48996007c8b50" 
}


