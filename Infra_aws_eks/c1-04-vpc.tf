data "aws_availability_zones" "available" {
  state = "available"
}

module "vpc" {
    source = "terraform-aws-modules/vpc/aws"

    # VPC
    name = local.name
    cidr = var.vpc_cidr_block

    azs = data.aws_availability_zones.available.names
    private_subnets = var.vpc_private_subnets
    public_subnets  = var.vpc_public_subnets

    # Create Subnet private and public
    create_database_subnet_group = true
    create_database_subnet_route_table = true
    database_subnets = var.vpc_database_subnets
    
    # Nat gateway for outbound communication -> only on nat gateway to avoid the cost but in prod 1 nat gateway / az
    enable_nat_gateway = true
    single_nat_gateway  = true

    # vpc dns parameters
    enable_dns_hostnames = true
    enable_dns_support   = true

    # Subnet Tags
    public_subnet_tags = {
        Type = "public-subnets"
    }

    private_subnet_tags = {
        Type = "private-subnets"
    }

    database_subnet_tags = {
        Type = "database-subnets"
    }

    
    tags = local.common_tags

    # VPC Tags
    vpc_tags = local.common_tags
}