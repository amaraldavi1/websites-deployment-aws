output "zone_id" {
  value       = aws_route53_zone.main.id
  description = "The zone ID of the root domain"
}

output "certificate_arn" {
  value       = aws_acm_certificate.main.arn
  description = "The ARN of the wildcard certificate"
}

output "nameservers" {
  value       = aws_route53_zone.main.name_servers
  description = "The nameservers for the root domain"
} 