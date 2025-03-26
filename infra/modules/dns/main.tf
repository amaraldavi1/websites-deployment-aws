# Create Route53 zone for the root domain
resource "aws_route53_zone" "main" {
  name = var.domain_name

  tags = {
    Name = var.domain_name
  }
}

# Create Route53 record for the subdomain
resource "aws_route53_record" "website" {
  zone_id = var.root_zone_id
  name    = "${var.subdomain}.${var.domain_name}"
  type    = "A"

  alias {
    name                   = var.endpoint_domain_name
    zone_id                = var.endpoint_zone_id
    evaluate_target_health = false
  }
}
