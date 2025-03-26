output "zone_id" {
  value       = aws_route53_zone.main.id
  description = "The zone ID of the root domain"
}

output "nameservers" {
  value       = aws_route53_zone.main.name_servers
  description = "The nameservers for the root domain"
}

output "fqdn" {
  value       = aws_route53_record.website.fqdn
  description = "The fully qualified domain name of the subdomain record"
}
