module "app-sg" {
  source = "github.com/electronicalias/tf-aws-sg"

  name = "${var.app_sg_name}"
  description = "${var.app_sg_description}"
}
