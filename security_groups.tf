module "security_group" {
  source = "github.com/electronicalias/tf-aws-sg"

  sg_name = "${var.app_sg_name}"
  sg_description = "${var.app_sg_description}"
}