terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.46.0"
    }
  }
}

provider "aws" {
  profile = "aws-hlourencomarques-terraform"
  region  = "us-east-1"
}

# data "aws_ami" "ubuntu" {
#   most_recent = true

#   filter {
#     name = "name"
#     values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
#   }

#   owners = ["099720109477"] # Canonical
# }

resource "aws_instance" "my_server" {
  # ami= data.aws_ami.ubuntu.id
  ami           = "ami-0236922087fa98b6e" # Replace with a valid AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "MyServer"
  }
}
