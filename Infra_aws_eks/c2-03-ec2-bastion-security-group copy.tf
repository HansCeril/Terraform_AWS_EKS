module "ec2-bastion-security-group" {
    source = "terraform-aws-modules/security-group/aws//modules/http-80"
    version = "4.9.0"
    name        = "${local.name}-public-bastion-sg"
    description = "Security group for bastion, open ssh port 22 for everybodyHTTP ports open within VPC"
    vpc_id      = module.vpc.vpc_id

    ingress_cidr_blocks = ["10.10.0.0/16"]
}
