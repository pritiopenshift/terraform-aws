module "vpc" {
  source = "../../modules/vpc"

  environment     = var.environment
  vpc_cidr        = var.vpc_cidr
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
}

module "security_group" {
  source = "../../modules/security_group"

  name            = "${var.environment}-ec2-sg"
  description     = "Security group for ${var.environment} EC2"
  vpc_id          = module.vpc.vpc_id
  ssh_cidr_blocks = var.ssh_cidr_blocks

  tags = {
    Environment = var.environment
    Project     = "terraform-multi-env"
  }
}

module "ec2" {
  source = "../../modules/ec2"

  name                        = var.ec2_name
  ami_id                      = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = module.vpc.public_subnet_ids["public_a"]
  security_group_ids          = [module.security_group.security_group_id]
  key_name                    = var.key_name
  user_data                   = var.user_data
  associate_public_ip_address = var.associate_public_ip_address
  root_volume_size            = var.root_volume_size

  tags = {
    Environment = var.environment
    Project     = "terraform-multi-env"
  }
}