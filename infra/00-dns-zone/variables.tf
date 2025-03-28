variable "domain_name" {
  type        = string
  description = "The root domain name"
  default     = "learningfor.fun"
}

variable "aws_region" {
  type        = string
  description = "The AWS region to deploy to"
  default     = "us-east-1"
} 