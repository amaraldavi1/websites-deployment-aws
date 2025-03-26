module "s3" {
  source = "../../../modules/s3"

  project_name                = var.project_name
  environment                 = var.environment
  cloudfront_distribution_arn = module.cloudfront.cloudfront_distribution_arn
}

module "cloudfront" {
  source = "../../../modules/cloudfront"

  project_name                = var.project_name
  environment                 = var.environment
  bucket_regional_domain_name = module.s3.bucket_regional_domain_name
  origin_bucket_id            = module.s3.website_bucket_name
  cloudfront_oac_id           = module.cloudfront.cloudfront_oac_id
  domain_name                 = "${var.subdomain}.${var.domain_name}"
  certificate_arn             = data.aws_acm_certificate.main.arn
}

# DNS Subdomain Module
module "dns_subdomain" {
  source = "../../../modules/dns-subdomain"

  domain_name          = var.domain_name
  subdomain            = var.subdomain
  endpoint_domain_name = module.cloudfront.cloudfront_domain_name
  endpoint_zone_id     = module.cloudfront.cloudfront_zone_id
  root_zone_id         = data.aws_route53_zone.main.id
}
