module "ec2-bastion-security-group" {
    source = "terraform-aws-modules/security-group/aws//modules/http-80"
    version = "4.9.0"
    name        = "${local.name}-public-bastion-sg"
    description = "Security group for bastion, open ssh port 22 for everybodyHTTP ports open within VPC"
    vpc_id      = module.vpc.vpc_id

    # Ingress Rules & CIDR Blocks
    ingress_rules = ["ssh-tcp"]
    ingress_cidr_blocks = ["0.0.0.0/0"]
    # Egress Rule - all-all open
    egress_rules = ["all-all"]
    tags = local.common_tags
}
