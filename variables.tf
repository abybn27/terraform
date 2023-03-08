
# Define variables

variable "instance_type" {}

variable "tag" {}

variable "ami_id" {
  default = "ami-0a1b29c03e81896bc"
}

variable "key_name" {
  default = "coit"
}

variable "vpc_id" {
  default = "vpc-0a4daca64625cca01"
}

variable "subnet_id" {
  default = "subnet-04ae4d75eeb879e0f"
}

variable "security_group_ids" {
  default = ["sg-060c1c8ffe7a61442"]
}
