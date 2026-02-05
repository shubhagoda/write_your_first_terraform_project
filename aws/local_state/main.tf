terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

# Stop existing EC2 instance
resource "aws_ec2_instance_state" "stop_target_server" {
  instance_id = "i-0c6d88151be410380"
  state       = "stopped"
}
