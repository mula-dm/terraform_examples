resource "aws_s3_bucket" "example_bucket" {
  provider = "aws.ireland"
  bucket   = "example_bucket"
  acl      = "private"
  lifecycle_rule {
    id      = "s3backup"
    prefix  = ""
    enabled = true

    transition {
      days          = 15
      storage_class = "GLACIER"
    }
  }
  policy = <<POLICY
{
  "Version": "2008-10-17",
  "Statement": [
    {
      "Sid": "AllowPublicRead",
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::example_bucket/*"
    }
  ]
}
POLICY
}

