data "aws_availability_zones" "available" {}

module "lab_vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 5.17"

  cidr = "10.78.78.0/24"
  azs  = data.aws_availability_zones.available.names

  create_igw              = false
  enable_nat_gateway      = false
  single_nat_gateway      = true
  enable_dns_hostnames    = true
  map_public_ip_on_launch = true

  manage_default_security_group  = true
  default_security_group_name    = "demo-default-sg"
  default_security_group_egress  = []
  default_security_group_ingress = []

}
