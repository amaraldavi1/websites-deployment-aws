<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cloudfront"></a> [cloudfront](#module\_cloudfront) | ../../../modules/cloudfront | n/a |
| <a name="module_dns_subdomain"></a> [dns\_subdomain](#module\_dns\_subdomain) | ../../../modules/dns-subdomain | n/a |
| <a name="module_s3"></a> [s3](#module\_s3) | ../../../modules/s3 | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_acm_certificate.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/acm_certificate) | data source |
| [aws_route53_zone.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route53_zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | The AWS region to deploy to | `string` | `"us-east-1"` | no |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | The domain name to use for the website | `string` | `"learningfor.fun"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | The environment to deploy to | `string` | `"prod"` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | The name of the project | `string` | `"websites-deployment"` | no |
| <a name="input_subdomain"></a> [subdomain](#input\_subdomain) | The subdomain to use for the website | `string` | `"static-prod"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloudfront_domain_name"></a> [cloudfront\_domain\_name](#output\_cloudfront\_domain\_name) | n/a |
| <a name="output_website_endpoint"></a> [website\_endpoint](#output\_website\_endpoint) | n/a |
<!-- END_TF_DOCS -->