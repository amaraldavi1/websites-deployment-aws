variable "project_name" {
  type        = string
  description = "The name of the project"
}

variable "environment" {
  type        = string
  description = "The deployment environment (dev/prod)"
}

variable "cloudfront_distribution_arn" {
  type        = string
  description = "The ARN of the CloudFront distribution"
} 