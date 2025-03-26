variable "project_name" {
  type        = string
  description = "The name of the project"
}

variable "environment" {
  type        = string
  description = "The deployment environment (dev/prod)"
}

variable "bucket_regional_domain_name" {
  type        = string
  description = "The regional domain name of the S3 bucket"
}

variable "cloudfront_oac_id" {
  type        = string
  description = "The ID of the CloudFront OAC"
}

variable "origin_bucket_id" {
  type        = string
  description = "The ID of the S3 bucket"
}

variable "domain_name" {
  type        = string
  description = "The custom domain name for the website"
}

variable "certificate_arn" {
  type        = string
  description = "The ARN of the ACM certificate"
}
