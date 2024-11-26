module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
 

  name = var.vpc_name
  cidr = var.cidr_block

  azs             = var.azs
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets

  enable_nat_gateway = var.enable_nat_gateway
  tags               = var.tags
}
