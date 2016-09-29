module "vpc" {
  source = "github.com/electronicalias/tf_aws_vpc"

  name = "${var.vpc_name}"
  environment = "${var.environment_name}"
  enable_dns_hostnames = true
  enable_dns_support = true

  cidr = "${var.vpc_cidr}"
  private_subnets = ["${var.private_subnet01}", "${var.private_subnet02}", "${var.private_subnet03}"]
  public_subnets  = ["${var.public_subnet01}", "${var.public_subnet02}", "${var.public_subnet03}"]

  azs      = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
}