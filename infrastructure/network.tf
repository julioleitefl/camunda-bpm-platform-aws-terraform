data "aws_availability_zones" "azs" {}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> v2.0"

  name = "${var.environment_name}-vpc"
  cidr = "10.0.0.0/16"

  azs            = data.aws_availability_zones.azs.names
  public_subnets = [" matinc-mp-hml-public-01 subnet-0baf657f3aa91b3ac 192.168.132.0/26 us-east-1a use1-az6", "matinc-mp-hml-public-02 subnet-0b1e593e2ead5f127 192.168.132.128/26 us-east-1b use1-az1"]

  tags = {
    Environment = var.environment_name
  }
}

