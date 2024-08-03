variable "region" {
  description = "The AWS region to create resources in."
  default     = "us-west-2"
}

# networking

variable "vpc_cidr" {
  description = "CIDR Block for VPC"
  default     = "10.0.0.0/16"
}
variable "public_subnet_1_cidr" {
  description = "CIDR Block for Public Subnet 1"
  default     = "10.0.1.0/24"
}

variable "private_subnet_1_cidr" {
  description = "CIDR Block for Private Subnet 1"
  default     = "10.0.2.0/24"
}

variable "availability_zones" {
  description = "Availability zones"
  type        = list(string)
  default     = ["us-west-2a", "us-west-2b"]
}

# ec2 instance required variables


variable "amis" {
  description = "Which AMI to spawn."
  default = {
    us-west-1 = "ami-0075013580f6322a1"
  }
}
variable "instance_type" {
  default = "t2.micro"
}

variable "ec2_instance_name" {
  description = "Name of the EC2 instance"
  default     = "terraform-lab"
}
