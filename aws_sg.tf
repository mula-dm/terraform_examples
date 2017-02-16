resource "aws_security_group" "example_security_group" {
  provider    = "aws.ireland"
  name        = "example_security_group"
  description = "Example security group"
  vpc_id      = "vpc-844c75e1"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

#  ingress {
#    from_port       = 0
#    to_port         = 0
#    protocol        = "-1"
#    security_groups = []
#    self            = true
#  }

#  ingress {
#    from_port   = 0
#    to_port     = 0
#    protocol    = "-1"
#    cidr_blocks = ["xx.xx.xx.xx/32", "xx.xx.xx.xx/32"]
#  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    "name" = "example"
  }
}

