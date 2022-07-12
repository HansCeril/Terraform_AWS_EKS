output "instance_public_ip" {
    description = "EC2 instance public IP"
    value = aws_instance.web.public_ip
}

output "instance_public_dns" {
    description = "EC2 instance public DNS"
    value = aws_instance.web.public_dns
}