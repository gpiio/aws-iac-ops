module "ec2_instances" {
  source            = "./modules/ec2"
  ami_id            = "ami-0866a3c8686eaeeba"
  instance_type     = "t3.medium"
  key_pair          = "iac-key-pair"
  security_group_ids = [module.vpc.public_security_group]
  subnet_id         = module.vpc.public_subnet_ids[0]
  instance_count    = 2
}

