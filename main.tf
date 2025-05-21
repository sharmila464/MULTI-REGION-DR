resource "aws_s3_bucket" "example" {
  bucket = "multi-region-dr-bucket-example"
  acl    = "private"
}
