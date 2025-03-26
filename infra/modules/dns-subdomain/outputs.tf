output "fqdn" {
  value       = aws_route53_record.subdomain.fqdn
  description = "The fully qualified domain name of the subdomain record"
} 