variable "environment" {
  type = string
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "public_subnets" {
  type = map(object({
    cidr = string
    az   = string
  }))

  description = "Public subnet configuration"
}

variable "private_subnets" {
  type = map(object({
    cidr = string
    az   = string
  }))

  description = "Private subnet configuration"
}