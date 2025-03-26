output "website_endpoint" {
  value = module.s3.website_endpoint
}

output "cloudfront_domain_name" {
  value = module.cloudfront.cloudfront_domain_name
}
