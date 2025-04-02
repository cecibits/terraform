resource "aws_security_group" "this" {
  name        = "acl-${var.application_name}"
  description = "Allow Traffic Communication ${var.application_name}"
  vpc_id      = "vpc-0b9b0aa8cc7e2e54f"

  ingress {
    description     = "Allow Traffic From ALB"
    from_port       = var.application_port
    to_port         = var.application_port
    protocol        = "tcp"
    cidr_blocks = var.cidr_blocks
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}