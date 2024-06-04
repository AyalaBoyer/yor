provider "aws" {

}
# yor:skip
resource "aws_s3_bucket" "with comment" {
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  bucket        = "yor-test-1"
  acl           = "private"
  force_destroy = true
}

resource "aws_alb" "example6" {
  name            = "example-alb-9"
  subnets         = ["subnet-abc123", "subnet-def456"]
  security_groups = ["sg-12345678"]
}