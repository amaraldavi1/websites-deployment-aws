resource "aws_ecr_repository" "app" {
  name = "${var.project_name}-${var.environment}"

  image_scanning_configuration {
    scan_on_push = true
  }

  encryption_configuration {
    encryption_type = "KMS"
  }

  image_tag_mutability = "MUTABLE"

  tags = {
    Environment = var.environment
    Project     = var.project_name
  }
}
