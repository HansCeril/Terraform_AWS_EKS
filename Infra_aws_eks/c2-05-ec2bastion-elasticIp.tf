resource "aws_eip" "bastion_eip" {
  instance = module.ec2_instance.id
  vpc      = true
  depends_on = [
    module.ec2_instance,
    module.vpc
  ]
}