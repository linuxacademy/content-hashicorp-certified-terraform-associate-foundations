provider "aws" {
  region = var.region
}

module "vpc" {
  source = "./modules/vpc"
  region = var.region
}

resource "aws_instance" "my-instance" {
  ami           = module.vpc.ami_id
  subnet_id     = module.vpc.subnet_id
  instance_type = "t3.micro"
}
