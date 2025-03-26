<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.92.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_dns_subdomain"></a> [dns\_subdomain](#module\_dns\_subdomain) | ../../../modules/dns-subdomain | n/a |
| <a name="module_ecr"></a> [ecr](#module\_ecr) | ../../../modules/ecr | n/a |
| <a name="module_ecs"></a> [ecs](#module\_ecs) | ../../../modules/ecs | n/a |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ../../../modules/vpc | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_acm_certificate.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/acm_certificate) | data source |
| [aws_route53_zone.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route53_zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_port"></a> [app\_port](#input\_app\_port) | Port exposed by the docker container | `number` | `3000` | no |
| <a name="input_availability_zones"></a> [availability\_zones](#input\_availability\_zones) | The availability zones for the subnets | `list(string)` | <pre>[<br/>  "us-east-1a",<br/>  "us-east-1b"<br/>]</pre> | no |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | The AWS region to deploy to | `string` | `"us-east-1"` | no |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | The domain name to use for the website | `string` | `"learningfor.fun"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | The environment to deploy to | `string` | `"dev"` | no |
| <a name="input_private_subnet_cidrs"></a> [private\_subnet\_cidrs](#input\_private\_subnet\_cidrs) | The CIDR blocks for the private subnets | `list(string)` | <pre>[<br/>  "10.0.2.0/24",<br/>  "10.0.4.0/24"<br/>]</pre> | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | The name of the project | `string` | `"websites-deployment"` | no |
| <a name="input_public_subnet_cidrs"></a> [public\_subnet\_cidrs](#input\_public\_subnet\_cidrs) | The CIDR blocks for the public subnets | `list(string)` | <pre>[<br/>  "10.0.1.0/24",<br/>  "10.0.3.0/24"<br/>]</pre> | no |
| <a name="input_subdomain"></a> [subdomain](#input\_subdomain) | The subdomain to use for the website | `string` | `"dynamic-dev"` | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | The CIDR block for the VPC | `string` | `"10.0.0.0/16"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->