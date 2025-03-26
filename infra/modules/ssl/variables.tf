variable "domain_name" {
  type        = string
  description = "The domain name for the SSL certificate"
}

variable "zone_id" {
  type        = string
  description = "The Route53 zone ID"
}
