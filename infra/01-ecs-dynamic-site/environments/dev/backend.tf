terraform {
  backend "s3" {
    bucket         = "websites-deployment-terraform-state"
    key            = "dev-dynamic/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "websites-deployment-terraform-state-lock"
    encrypt        = true
    profile        = "personal"
  }
}