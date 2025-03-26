variable "project_name" {
  type        = string
  description = "The name of the project"
  default     = "websites-deployment"
}

variable "aws_region" {
  type        = string
  description = "The AWS region to deploy to"
  default     = "us-east-1"
}

variable "domain_name" {
  type        = string
  description = "The domain name to use for the website"
  default     = "learningfor.fun"
}

variable "subdomain" {
  type        = string
  description = "The subdomain to use for the website"
  default     = "static-dev"
}

variable "environment" {
  type        = string
  description = "The environment to deploy to"
  default     = "dev"
}
