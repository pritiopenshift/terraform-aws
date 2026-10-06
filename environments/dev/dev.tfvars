environment = "dev"

vpc_cidr = "10.10.0.0/16"

public_subnets = {
  public_a = {
    cidr = "10.10.1.0/24"
    az   = "ap-south-1a"
  }

  public_b = {
    cidr = "10.10.2.0/24"
    az   = "ap-south-1b"
  }
}

private_subnets = {
  private_a = {
    cidr = "10.10.10.0/24"
    az   = "ap-south-1a"
  }

  private_b = {
    cidr = "10.10.20.0/24"
    az   = "ap-south-1b"
  }
}


# EC2
ec2_name      = "dev-app-server"
ami_id        = "ami-0842e334bf07e3de0"
instance_type = "t3.micro"

#security_group
ssh_cidr_blocks = ["49.204.191.134/32"]