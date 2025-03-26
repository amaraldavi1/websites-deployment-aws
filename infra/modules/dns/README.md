<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_route53_record.website](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_zone.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | The root domain name (learningfor.fun) | `string` | n/a | yes |
| <a name="input_endpoint_domain_name"></a> [endpoint\_domain\_name](#input\_endpoint\_domain\_name) | Domain name of the endpoint (CloudFront distribution or ALB) | `string` | n/a | yes |
| <a name="input_endpoint_zone_id"></a> [endpoint\_zone\_id](#input\_endpoint\_zone\_id) | Zone ID of the endpoint (CloudFront distribution or ALB) | `string` | n/a | yes |
| <a name="input_root_zone_id"></a> [root\_zone\_id](#input\_root\_zone\_id) | The zone ID of the root domain | `string` | n/a | yes |
| <a name="input_subdomain"></a> [subdomain](#input\_subdomain) | The subdomain to create (static or dynamic) | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_fqdn"></a> [fqdn](#output\_fqdn) | The fully qualified domain name of the subdomain record |
| <a name="output_nameservers"></a> [nameservers](#output\_nameservers) | The nameservers for the root domain |
| <a name="output_zone_id"></a> [zone\_id](#output\_zone\_id) | The zone ID of the root domain |
<!-- END_TF_DOCS -->