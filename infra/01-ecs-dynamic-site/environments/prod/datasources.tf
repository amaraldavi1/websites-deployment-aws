# Get existing zone and certificate
data "aws_route53_zone" "main" {
  name = var.domain_name
}

data "aws_acm_certificate" "main" {
  domain   = var.domain_name
  statuses = ["ISSUED"]
}