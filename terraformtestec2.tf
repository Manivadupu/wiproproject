# Terraform Configure setting block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default" 
  region  = "ap-south-1"
}

resource "aws_instance" "ec2testserver_terraform" {
  
  ami                    = "ami-052cef05d01020f1d"
  instance_type          = "t3.medium"
  key_name               = "linux2server"
  monitoring             = false
  vpc_security_group_ids = ["sg-08db8e1c598854c12"]
  subnet_id              = "subnet-c28b7aa9"

  
}


