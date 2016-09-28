module "app_sg" {
  source = "github.com/electronicalias/tf-aws-sg"
  vpc_id = "${module.vpc.env.id}"
  sg_name = "${var.app_sg_name}-${var.environment_name}"
  sg_description = "${var.app_sg_description}-${var.environment_name}"
}

module "web_sg" {
  source = "github.com/electronicalias/tf-aws-sg"
  vpc_id = "${module.vpc.env.id}"
  sg_name = "${var.web_sg_name}-${var.environment_name}"
  sg_description = "${var.web_sg_description}-${var.environment_name}"
}

module "db_sg" {
  source = "github.com/electronicalias/tf-aws-sg"
  vpc_id = "${module.vpc.env.id}"
  sg_name = "${var.db_sg_name}-${var.environment_name}"
  sg_description = "${var.db_sg_description}-${var.environment_name}"
}