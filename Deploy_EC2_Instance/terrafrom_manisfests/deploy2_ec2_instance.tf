resource "aws_instance" "web" {
    ami = data.aws_ami.amzlinux2.id
    instance_type = var.aws_instance_type
    user_data = file("${path.module}/app1_install.sh")
    vpc_security_group_ids = [ aws_security_group.allow-ssh.id, aws_security_group.allow_http_https.id ]
    tags = {
        Name = "Deploy EC2 instance"
    }
}