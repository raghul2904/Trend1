provider "aws" {
  region = "ap-south-1" # Mumbai region
}


module "vpc" {
  source = "./vpc"
}

module "iam" {
  source = "./iam"
}

module "ec2" {
  source              = "./ec2"
  subnet_id           = module.vpc.subnet_id
  security_group_id   = module.vpc.security_group_id
  iam_instance_profile = module.iam.instance_profile
}