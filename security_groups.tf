module "app_sg" {
  source = "github.com/electronicalias/tf-aws-sg"

  sg_name = "${var.app_sg_name}-${var.environment}"
  sg_description = "${var.app_sg_description}-${var.environment}"
}

module "web_sg" {
  source = "github.com/electronicalias/tf-aws-sg"

  sg_name = "${var.web_sg_name}-${var.environment}"
  sg_description = "${var.web_sg_description-${var.environment}"
}