module "vpc" {
  source = "./vpc"
  vpc_cidr = "10.0.0.0/16"    # pass variables your vpc module expects
}

module "s3" {
  source = "./s3"
  # pass variables if any defined in s3 module
}

module "rds" {
  source = "./rds"
  # pass variables if any defined in rds module
}
module "ec2" {
  source = "./ec2"
  # pass variables if you added any
}

