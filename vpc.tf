module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "${local.common_tag}"
  cidr = var.vpc_cidr

  azs             = var.azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets
  create_database_subnet_group = true
  create_database_subnet_route_table = true
  database_subnet_group_name = "${local.common_tag}-sbg"
  database_subnets = var.database_subnets
  create_database_nat_gateway_route = true
  enable_nat_gateway = true
  enable_vpn_gateway = true 

  tags = {
    Team = local.Team
    Environment = local.Environment
  }
}