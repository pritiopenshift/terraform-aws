variable "name" {
  type        = string
  description = "Name tag for the EC2 instance"
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

variable "subnet_id" {
  type        = string
  description = "Subnet in which to launch the instance"
}

variable "security_group_ids" {
  type        = list(string)
  description = "Security groups to associate with the instance"
  default     = []
}

variable "key_name" {
  type        = string
  description = "Optional EC2 key pair name"
  default     = null
  nullable    = true
}

variable "user_data" {
  type        = string
  description = "Optional user data script"
  default     = null
  nullable    = true
}

variable "associate_public_ip_address" {
  type        = bool
  description = "Whether to associate a public IP address"
  default     = false
}

variable "root_volume_size" {
  type        = number
  description = "Root EBS volume size in GiB"
  default     = 8
}

variable "tags" {
  type        = map(string)
  description = "Additional tags for the instance"
  default     = {}
}