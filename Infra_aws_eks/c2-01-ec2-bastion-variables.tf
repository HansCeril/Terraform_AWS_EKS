variable "instance_type" {
    description = "type of the ec2 instance"
    type = string
    default = "t2.micro"
}

variable "instance_keypair" {
    description = "tAWS EC2 Key pair that need to be associated with EC2 Instance"
    type = string
    default = "EC2_keypair"
}
