variable "project_name" {
  type        = string
  description = "The name of the project"
  default     = "websites-deployment"
}

variable "environment" {
  type        = string
  description = "The environment to deploy to"
  default     = "dev"
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
  default     = "dynamic-dev"
}

variable "app_port" {
  type        = number
  description = "Port exposed by the docker container"
  default     = 3000
}

variable "vpc_cidr" {
  type        = string
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "The CIDR blocks for the public subnets"
  default     = ["10.0.1.0/24", "10.0.3.0/24"]
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "The CIDR blocks for the private subnets"
  default     = ["10.0.2.0/24", "10.0.4.0/24"]
}

variable "availability_zones" {
  type        = list(string)
  description = "The availability zones for the subnets"
  default     = ["us-east-1a", "us-east-1b"]
}
