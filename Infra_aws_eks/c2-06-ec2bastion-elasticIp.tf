resource "aws_eip" "bastion_eip" {
  instance = module.ec2_instance.id
  vpc      = true
  tags = local.common_tags  
  depends_on = [
    module.ec2_instance,
    module.vpc
  ]
}