provider "aws" {

}
# yor:skip
resource "aws_alb" "example" {
  name            = "example-alb"
  subnets         = ["subnet-abc123", "subnet-def456"]
  security_groups = ["sg-12345678"]
}
