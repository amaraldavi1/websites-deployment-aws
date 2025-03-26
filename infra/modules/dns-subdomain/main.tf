# Create Route53 record for the subdomain
resource "aws_route53_record" "subdomain" {
  zone_id = var.root_zone_id
  name    = "${var.subdomain}.${var.domain_name}"
  type    = "A"

  alias {
    name                   = var.endpoint_domain_name
    zone_id                = var.endpoint_zone_id
    evaluate_target_health = false
  }
} 