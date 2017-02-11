resource "aws_ecr_repository" "example" {
  provider = "aws.virginia"
  name     = "example"
}
