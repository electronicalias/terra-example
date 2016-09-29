variable "app_sg_name" {}
variable "app_sg_description" {}
variable "web_sg_name" {}
variable "web_sg_description" {}
variable "db_sg_name" {}
variable "db_sg_description" {}
variable "run_region" {}
variable "environment_name" {}
variable "vpc_name" {}
variable "vpc_cidr" {}
variable "public_subnet01" {}
variable "public_subnet02" {}
variable "public_subnet03" {}
variable "private_subnet01" {}
variable "private_subnet02" {}
variable "private_subnet03" {}
variable "pci_vpc" {
    type = "map"
    default = {
        cidr = "10.6.0.0/16"
        name = "psmith-ppes-test-pci"
        public_subnet01 = "10.6.0.0/20"
        private_subnet01 = "10.6.128.0/20"
    }
}
