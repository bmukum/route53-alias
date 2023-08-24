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
| [aws_route53_record.name](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_zone.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route53_zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alias_name"></a> [alias\_name](#input\_alias\_name) | DNS name for the ELB, Cloudfront distribution, S3 bucket or other AWS resource. | `string` | n/a | yes |
| <a name="input_alias_zone_id"></a> [alias\_zone\_id](#input\_alias\_zone\_id) | Hosted zone ID for a Cloudfront distribution, ELB, S3 bucket, or Route53 zone | `string` | n/a | yes |
| <a name="input_allow_overwrite"></a> [allow\_overwrite](#input\_allow\_overwrite) | If true, this DNS record will overwrite any existing records with the same name/type in the route53 zone | `bool` | `false` | no |
| <a name="input_dns_zone_name"></a> [dns\_zone\_name](#input\_dns\_zone\_name) | The name of the Route53 DNS zone to create the record. | `string` | n/a | yes |
| <a name="input_evaluate_target_health"></a> [evaluate\_target\_health](#input\_evaluate\_target\_health) | Set to true or false whether to respond to DNS queries using this resource record set by checking the health of the resource record set | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the route53 record to create. It's' final name of name.dns\_zone\_name | `string` | n/a | yes |
| <a name="input_private_zone"></a> [private\_zone](#input\_private\_zone) | Is the hosted zone private or public | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_route53_record_fqdn"></a> [route53\_record\_fqdn](#output\_route53\_record\_fqdn) | FQDN built using the zone domain and name |
| <a name="output_route53_record_name"></a> [route53\_record\_name](#output\_route53\_record\_name) | The name of the record |
