# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.22.0"
    }
  }
}

# Provider Block
provider "aws" {
  # Configuration options
  profile = "default"
  region =  "us-east-1"
}

# Ressources Block
resource "aws_instance" "foo" {
  ami = "ami-0cff7528ff583bf9a" # us-east-1
  instance_type = "t2.micro"
}

