# VPC Module
module "vpc" {
  source = "../../../modules/vpc"

  project_name         = var.project_name
  environment          = var.environment
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones   = var.availability_zones
  vpc_cidr             = var.vpc_cidr
}

# ECR Module
module "ecr" {
  source = "../../../modules/ecr"

  project_name = var.project_name
  environment  = var.environment
}

# ECS Module
module "ecs" {
  source     = "../../../modules/ecs"
  aws_region = var.aws_region

  project_name = var.project_name
  environment  = var.environment
  vpc_id       = module.vpc.vpc_id

  container_image = "${module.ecr.repository_url}:latest"
  container_port  = var.app_port

  public_subnet_ids  = module.vpc.public_subnet_ids
  private_subnet_ids = module.vpc.private_subnet_ids
  health_check_path  = "/"

  service_desired_count     = 1
  auto_scaling_max_capacity = 3
  auto_scaling_min_capacity = 1
  cpu_threshold             = 60

  certificate_arn = data.aws_acm_certificate.main.arn
}

# DNS Subdomain Module
module "dns_subdomain" {
  source = "../../../modules/dns-subdomain"

  domain_name          = var.domain_name
  subdomain            = var.subdomain
  endpoint_domain_name = module.ecs.alb_dns_name
  endpoint_zone_id     = module.ecs.alb_zone_id
  root_zone_id         = data.aws_route53_zone.main.id
}