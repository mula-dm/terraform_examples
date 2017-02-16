resource "aws_glacier_vault" "s3backup" {
  provider = "aws.ireland"
  name     = "s3backup"
}
