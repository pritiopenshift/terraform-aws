terraform {
  backend "s3" {
    bucket       = "cloud-platform-terraform-state-605134436540"
    key          = "dev/terraform.tfstate"
    region       = "ap-south-1"
    use_lockfile = true
    encrypt      = true
  }
}