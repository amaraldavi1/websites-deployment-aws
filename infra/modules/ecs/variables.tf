variable "project_name" {
  type        = string
  description = "Name of the project"
}

variable "environment" {
  type        = string
  description = "Environment (dev/prod)"
}

variable "aws_region" {
  type        = string
  description = "AWS region"
}

variable "vpc_id" {
  type        = string
  description = "ID of the VPC"
}

variable "task_cpu" {
  type        = number
  description = "CPU units for the task (1 vCPU = 1024)"
  default     = 256
}

variable "task_memory" {
  type        = number
  description = "Memory for the task (in MiB)"
  default     = 512
}

variable "container_image" {
  type        = string
  description = "Docker image for the application"
}

variable "container_port" {
  type        = number
  description = "Port exposed by the container"
}

variable "container_environment" {
  type = list(object({
    name  = string
    value = string
  }))
  description = "Environment variables for the container"
  default     = []
}

variable "public_subnet_ids" {
  type        = list(string)
  description = "List of public subnet IDs for ALB"
}

variable "health_check_path" {
  type        = string
  description = "Health check path for the default target group"
  default     = "/"
}

variable "private_subnet_ids" {
  type        = list(string)
  description = "List of private subnet IDs for ECS tasks"
}

variable "service_desired_count" {
  type        = number
  description = "Number of tasks to run in the service"
  default     = 2
}

variable "auto_scaling_max_capacity" {
  type        = number
  description = "Maximum number of tasks to scale to"
  default     = 4
}

variable "auto_scaling_min_capacity" {
  type        = number
  description = "Minimum number of tasks to scale to"
  default     = 2
}

variable "cpu_threshold" {
  type        = number
  description = "CPU threshold for auto scaling"
  default     = 60
}

variable "certificate_arn" {
  type        = string
  description = "ARN of the SSL certificate"
} 