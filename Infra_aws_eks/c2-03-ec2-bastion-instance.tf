module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "${local.name}-bastionHost"

  ami                    = data.aws_ami.amzlinux2.id
  instance_type          = var.instance_type
  key_name               = var.instance_keypair
  vpc_security_group_ids = [module.ec2-bastion-security-group.vpc_security_group_id]
  subnet_id              = module.vpc.public_subnets[0]

  tags = local.common_tags
}
