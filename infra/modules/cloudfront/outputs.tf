output "cloudfront_domain_name" {
  value = aws_cloudfront_distribution.website.domain_name
}

output "cloudfront_distribution_id" {
  value = aws_cloudfront_distribution.website.id
}

output "cloudfront_distribution_arn" {
  value = aws_cloudfront_distribution.website.arn
}

output "cloudfront_oac_id" {
  value = aws_cloudfront_origin_access_control.website.id
}

output "cloudfront_zone_id" {
  value = aws_cloudfront_distribution.website.hosted_zone_id
}