resource "aws_s3_bucket" "example_bucket" {
  provider = "aws.ireland"
  bucket   = "example_bucket"
  acl      = "private"

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

