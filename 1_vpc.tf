module "vpc" {
  source              = "./modules/vpc"  # Local path or Git repo if remote
  vpc_cidr            = "10.0.0.0/16"
  vpc_name            = "my-homelab-vpc"
  azs                 = ["us-east-1a", "us-east-1b"]
  public_subnet_count = 2
  private_subnet_count = 2
  public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

