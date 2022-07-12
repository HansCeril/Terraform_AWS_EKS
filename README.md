# Terraform_AWS_EKS
Project to learn Terraform EKS AWS


## 1) Review terraform manisfest for EC2 instance

- > Ensure we have a default VPC

- > Ensure we have that AMI ID in our region

- > Ensure we have our AWS Credentials => cat /home/administrateur/.aws/credentials


# Commands Steps to deploy with terraform

## Initialize Terraform
terraform init

## Terraform Validate
terraform validate

## Terraform Plan to verify what is going to create or update or delete
terraform plan

## Terraform Apply to execute the deployment
terraform apply