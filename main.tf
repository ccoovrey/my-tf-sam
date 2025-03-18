terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

provider "aws" {
    region = "us-east-1"
}

# Random suffix for this deployment
resource "random_string" "suffix" {
  length  = 8
  special = false
  upper = false
}

locals {
  resource_prefix = "coov-sam"
  resource_suffix = random_string.suffix.result
}

data "aws_availability_zones" "available" {
}

# VPC infra using https://github.com/terraform-aws-modules/terraform-aws-vpc
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "3.13.0"

  name = "${local.resource_prefix}-${local.resource_suffix}"
  cidr = "10.10.0.0/16"

  azs             = data.aws_availability_zones.available.names
  private_subnets = ["10.10.8.0/21", "10.10.16.0/21", "10.10.24.0/21"]
  public_subnets  = ["10.10.128.0/21", "10.10.136.0/21", "10.10.144.0/21"]

  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true
}