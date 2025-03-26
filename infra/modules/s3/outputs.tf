output "website_bucket_name" {
  value = aws_s3_bucket.main.id
}

output "bucket_regional_domain_name" {
  value = aws_s3_bucket.main.bucket_regional_domain_name
}

output "website_bucket_arn" {
  value = aws_s3_bucket.main.arn
}

output "website_endpoint" {
  value = aws_s3_bucket_website_configuration.main.website_endpoint
}
