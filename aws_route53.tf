resource "aws_route53_zone" "example-com-public" {
  provider      = "aws.virginia"
  name          = "example.com"
  comment       = "example.com"
  force_destroy = "false"
  tags          = {}
}
