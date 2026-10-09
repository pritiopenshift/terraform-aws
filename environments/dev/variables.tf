variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "environment" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "public_subnets" {
  type = map(object({
    cidr = string
    az   = string
  }))
}

variable "private_subnets" {
  type = map(object({
    cidr = string
    az   = string
  }))
}


variable "ec2_name" {
  type        = string
  description = "Name of the EC2 instance"
}

variable "ami_id" {
  type        = string
  description = "AMI ID to launch"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
  default     = "t3.micro"
}

variable "security_group_ids" {
  type        = list(string)
  description = "Security groups to associate with EC2"
  default     = []
}

variable "key_name" {
  type        = string
  description = "EC2 key pair name"
  default     = null
  nullable    = true
}

variable "user_data" {
  type        = string
  description = "EC2 startup script"
  default     = null
  nullable    = true
}

variable "associate_public_ip_address" {
  type    = bool
  default = false
}

variable "root_volume_size" {
  type    = number
  default = 8
}

variable "ssh_cidr_blocks" {
  type        = list(string)
  description = "CIDR blocks allowed to access EC2 using SSH"
}