resource "aws_s3_bucket" "app_data" {
  bucket = "sharmila-dr-app-data-us-east-1"
  acl    = "private"

  tags = {
    Name = "App Data Bucket"
  }
}
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "main-vpc"
  }
}
