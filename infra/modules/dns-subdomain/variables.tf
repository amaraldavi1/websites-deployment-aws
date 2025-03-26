variable "domain_name" {
  type        = string
  description = "The root domain name (learningfor.fun)"
}

variable "subdomain" {
  type        = string
  description = "The subdomain to create"
}

variable "endpoint_domain_name" {
  type        = string
  description = "Domain name of the endpoint (CloudFront distribution or ALB)"
}

variable "endpoint_zone_id" {
  type        = string
  description = "Zone ID of the endpoint (CloudFront distribution or ALB)"
}

variable "root_zone_id" {
  type        = string
  description = "The zone ID of the root domain"
} 