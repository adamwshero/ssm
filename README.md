[![SWUbanner](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/banner2-direct.svg)](https://github.com/vshymanskyy/StandWithUkraine/blob/main/docs/README.md)

![Terraform](https://cloudarmy.io/tldr/images/tf_aws.jpg)
<br>
<br>
<br>
<br>
![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/adamwshero/terraform-aws-ssm?color=lightgreen&label=latest%20tag%3A&style=for-the-badge)
<br>
<br>
# terraform-aws-api-gateway (V1)


Terraform module to create [SSM](https://docs.aws.amazon.com/systems-manager/latest/userguide/what-is-systems-manager.html) resources.

Amazon SSM is a....
<br>

## Module Capabilities
  * 
<br>

## Assumptions
  * Something
<br>

## Usage
  * Something

<br>

## Special Notes
  * Something
<br>

## Upcoming/Recent Improvements
  * Something

## The More You Know
  * Something
<br>

### Terraform Basic Example
```
module "ssm" {
  source = "git::git@github.com:adamwshero/ssm.git//.?ref=1.0.0"

inputs = {

}
```
### Terragrunt Basic Example
```
terraform {
  source = "git::git@github.com:adamwshero/ssm.git//.?ref=1.0.0"
}

inputs = {

}
```

## Supporting Articles & Documentation
  - 

<!-- DO NOT REMOVE THE LINE BELOW  Self generated TF DOCS -->
<!-- Generated with https://github.com/terraform-docs/terraform-docs
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.30.0 |
| <a name="requirement_terragrunt"></a> [terragrunt](#requirement\_terragrunt) | >= 0.28.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.30.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_api_gateway_account.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_account) | resource |
| [aws_api_gateway_api_key.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_api_key) | resource |
| [aws_api_gateway_base_path_mapping.edge_acm](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_base_path_mapping) | resource |
| [aws_api_gateway_base_path_mapping.edge_iam](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_base_path_mapping) | resource |
| [aws_api_gateway_base_path_mapping.regional_acm](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_base_path_mapping) | resource |
| [aws_api_gateway_base_path_mapping.regional_iam](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_base_path_mapping) | resource |
| [aws_api_gateway_deployment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_deployment) | resource |
| [aws_api_gateway_domain_name.edge_acm](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_domain_name) | resource |
| [aws_api_gateway_domain_name.edge_iam](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_domain_name) | resource |
| [aws_api_gateway_domain_name.regional_acm](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_domain_name) | resource |
| [aws_api_gateway_domain_name.regional_iam](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_domain_name) | resource |
| [aws_api_gateway_method_settings.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_method_settings) | resource |
| [aws_api_gateway_rest_api.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_rest_api) | resource |
| [aws_api_gateway_rest_api_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_rest_api_policy) | resource |
| [aws_api_gateway_stage.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_stage) | resource |
| [aws_api_gateway_usage_plan.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_usage_plan) | resource |
| [aws_api_gateway_usage_plan_key.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_usage_plan_key) | resource |
| [aws_cloudwatch_log_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_wafv2_web_acl_association.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/wafv2_web_acl_association) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_log_format"></a> [access\_log\_format](#input\_access\_log\_format) | (Required) Formatting and values recorded in the logs. For more information on configuring the log format rules visit the AWS documentation | `string` | n/a | yes |
| <a name="input_api_key_description"></a> [api\_key\_description](#input\_api\_key\_description) | (Optional) API key description. Defaults to `Managed by Terraform`. | `string` | `null` | no |
| <a name="input_api_key_name"></a> [api\_key\_name](#input\_api\_key\_name) | (Required) Name of the API key. | `string` | `null` | no |
| <a name="input_api_keys"></a> [api\_keys](#input\_api\_keys) | Map of objects that define the usage plan to be created. | <pre>list(<br>    object({<br>      name       = string<br>      key_type   = string<br>      usage_plan = string<br>    })<br>  )</pre> | <pre>[<br>  {<br>    "key_type": null,<br>    "name": null,<br>    "usage_plan": null<br>  }<br>]</pre> | no |
| <a name="input_api_name"></a> [api\_name](#input\_api\_name) | (Required) Name of the REST API. If importing an OpenAPI specification via the `body` argument, this corresponds to the `info.title` field. If the argument value is different than the OpenAPI value, the argument value will override the OpenAPI value. | `string` | `null` | no |
| <a name="input_burst_limit"></a> [burst\_limit](#input\_burst\_limit) | (Optional) - The API request burst limit, the maximum rate limit over a time ranging from one to a few seconds, depending upon whether the underlying token bucket is at its full capacity. | `number` | `5` | no |
| <a name="input_cache_cluster_enabled"></a> [cache\_cluster\_enabled](#input\_cache\_cluster\_enabled) | (Optional) Whether a cache cluster is enabled for the stage. | `bool` | `true` | no |
| <a name="input_cache_cluster_size"></a> [cache\_cluster\_size](#input\_cache\_cluster\_size) | (Optional) Size of the cache cluster for the stage, if enabled. Allowed values include `0.5`, `1.6`, `6.1`, `13.5`, `28.4`, `58.2`, `118` and `237`. | `number` | `0.5` | no |
| <a name="input_cache_data_encrypted"></a> [cache\_data\_encrypted](#input\_cache\_data\_encrypted) | (Optional) Whether the cached responses are encrypted. | `bool` | `false` | no |
| <a name="input_cache_ttl_in_seconds"></a> [cache\_ttl\_in\_seconds](#input\_cache\_ttl\_in\_seconds) | (Optional) Time to live (TTL), in seconds, for cached responses. The higher the TTL, the longer the response will be cached. | `number` | `300` | no |
| <a name="input_caching_enabled"></a> [caching\_enabled](#input\_caching\_enabled) | (Optional) Whether responses should be cached and returned for requests. A cache cluster must be enabled on the stage for responses to be cached. | `bool` | `true` | no |
| <a name="input_certificate_type"></a> [certificate\_type](#input\_certificate\_type) | This resource currently only supports managing a single value. Valid values: `ACM` or `IAM`. If unspecified, defaults to `acm` | `string` | `"ACM"` | no |
| <a name="input_client_certificate_id"></a> [client\_certificate\_id](#input\_client\_certificate\_id) | (Optional) Identifier of a client certificate for the stage. | `string` | `null` | no |
| <a name="input_client_name"></a> [client\_name](#input\_client\_name) | client name to use this api. | `string` | `null` | no |
| <a name="input_cloudwatch_role_arn"></a> [cloudwatch\_role\_arn](#input\_cloudwatch\_role\_arn) | (Required) for the `api_gateway_account` resource. | `string` | n/a | yes |
| <a name="input_create_api_domain_name"></a> [create\_api\_domain\_name](#input\_create\_api\_domain\_name) | Whether to create API domain name resource. | `bool` | `false` | no |
| <a name="input_create_rest_api_policy"></a> [create\_rest\_api\_policy](#input\_create\_rest\_api\_policy) | Enables creation of the resource policy for a given API. | `bool` | `true` | no |
| <a name="input_create_usage_plan"></a> [create\_usage\_plan](#input\_create\_usage\_plan) | Allows creation of a usage plan. (Requires `var.enable_api_key = true`) | `bool` | `false` | no |
| <a name="input_data_trace_enabled"></a> [data\_trace\_enabled](#input\_data\_trace\_enabled) | (Optional) Whether data trace logging is enabled for this method, which effects the log entries pushed to Amazon CloudWatch Logs. | `bool` | `false` | no |
| <a name="input_description"></a> [description](#input\_description) | (Optional) Description of the REST API. If importing an OpenAPI specification via the `body` argument, this corresponds to the `info.description` field. If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value. | `string` | `null` | no |
| <a name="input_documentation_version"></a> [documentation\_version](#input\_documentation\_version) | (Optional) Version of the associated API documentation. | `string` | `null` | no |
| <a name="input_domain_certificate_arn"></a> [domain\_certificate\_arn](#input\_domain\_certificate\_arn) | The ARN of an AWS-managed certificate that will be used by the endpoint for the domain name. | `string` | `null` | no |
| <a name="input_domain_certificate_name"></a> [domain\_certificate\_name](#input\_domain\_certificate\_name) | Unique name to use when registering this certificate as an IAM server certificate. Conflicts with certificate\_arn, regional\_certificate\_arn, and regional\_certificate\_name. Required if certificate\_arn is not set. | `string` | `null` | no |
| <a name="input_domain_names"></a> [domain\_names](#input\_domain\_names) | Fully-qualified domain name to register. The domain names to use for API gateway it will use the index of stage\_names to select the domain name. | `list(string)` | `null` | no |
| <a name="input_enable_api_key"></a> [enable\_api\_key](#input\_enable\_api\_key) | (Optional) Whether the API key can be used by callers. Defaults to `false`. | `bool` | `false` | no |
| <a name="input_enable_canary"></a> [enable\_canary](#input\_enable\_canary) | (Optional) Whether to use the values supplied for the canary and stage\_variable\_overrides or not. | `bool` | `false` | no |
| <a name="input_enable_waf"></a> [enable\_waf](#input\_enable\_waf) | Enables associating existing WAF ACL to all stages. | `bool` | `false` | no |
| <a name="input_endpoint_type"></a> [endpoint\_type](#input\_endpoint\_type) | (Required) List of endpoint types. This resource currently only supports managing a single value. Valid values: `EDGE`, `REGIONAL` or `PRIVATE`. If unspecified, defaults to `EDGE`. Must be declared as `REGIONAL` in non-Commercial partitions. If set to `PRIVATE` recommend to set put\_rest\_api\_mode = merge to not cause the endpoints and associated Route53 records to be deleted. Refer to the documentation for more information on the difference between edge-optimized and regional APIs. | `string` | `"EDGE"` | no |
| <a name="input_iam_certificate_body"></a> [iam\_certificate\_body](#input\_iam\_certificate\_body) | Certificate issued for the domain name being registered, in PEM format. Only valid for EDGE endpoint configuration type. Conflicts with certificate\_arn, regional\_certificate\_arn, and regional\_certificate\_name | `string` | `null` | no |
| <a name="input_iam_certificate_chain"></a> [iam\_certificate\_chain](#input\_iam\_certificate\_chain) | Certificate for the CA that issued the certificate, along with any intermediate CA certificates required to create an unbroken chain to a certificate trusted by the intended API clients. Only valid for EDGE endpoint configuration type. Conflicts with certificate\_arn, regional\_certificate\_arn, and regional\_certificate\_name. | `string` | `null` | no |
| <a name="input_iam_certificate_private_key"></a> [iam\_certificate\_private\_key](#input\_iam\_certificate\_private\_key) | Private key associated with the domain certificate given in certificate\_body. Only valid for EDGE endpoint configuration type. Conflicts with certificate\_arn, regional\_certificate\_arn, and regional\_certificate\_name. | `string` | `null` | no |
| <a name="input_limit"></a> [limit](#input\_limit) | (Optional) - Maximum number of requests that can be made in a given time period. | `number` | `20` | no |
| <a name="input_log_group_kms_key"></a> [log\_group\_kms\_key](#input\_log\_group\_kms\_key) | (Optional) The ARN of the KMS Key to use when encrypting log data. Please note, after the AWS KMS CMK is disassociated from the log group, AWS CloudWatch Logs stops encrypting newly ingested data for the log group. All previously ingested data remains encrypted, and AWS CloudWatch Logs requires permissions for the CMK whenever the encrypted data is requested. | `string` | `null` | no |
| <a name="input_log_group_name"></a> [log\_group\_name](#input\_log\_group\_name) | (Optional, Forces new resource) The name of the log group. If omitted, Terraform will assign a random, unique name. | `string` | `null` | no |
| <a name="input_log_group_retention_in_days"></a> [log\_group\_retention\_in\_days](#input\_log\_group\_retention\_in\_days) | (Optional) Specifies the number of days you want to retain log events in the specified log group. Possible values are: 1, 3, 5, 7, 14, 30, 60, 90, 120, 150, 180, 365, 400, 545, 731, 1827, 3653, and 0. If you select 0, the events in the log group are always retained and never expire. | `string` | `7` | no |
| <a name="input_logging_level"></a> [logging\_level](#input\_logging\_level) | (Optional) Logging level for this method, which effects the log entries pushed to Amazon CloudWatch Logs. The available levels are OFF, ERROR, and INFO. | `string` | `"INFO"` | no |
| <a name="input_method_path"></a> [method\_path](#input\_method\_path) | (Required) Method path defined as `{resource_path}/{http_method}` for an individual method override, or `*/*` for overriding all methods in the stage. Ensure to trim any leading forward slashes in the path. | `string` | n/a | yes |
| <a name="input_metrics_enabled"></a> [metrics\_enabled](#input\_metrics\_enabled) | (Optional) Whether Amazon CloudWatch metrics are enabled for this method. | `string` | `true` | no |
| <a name="input_mutual_tls_authentication"></a> [mutual\_tls\_authentication](#input\_mutual\_tls\_authentication) | An Amazon S3 URL that specifies the truststore for mutual TLS authentication as well as version, keyed at uri and version | `map(string)` | `{}` | no |
| <a name="input_offset"></a> [offset](#input\_offset) | (Optional) - Number of requests subtracted from the given limit in the initial time period. | `number` | `2` | no |
| <a name="input_openapi_definition"></a> [openapi\_definition](#input\_openapi\_definition) | (Required) YAML formatted definition file using OpenAPI 3.x specification. This definition contains all API configuration inputs. Any inputs used in Terraform will override inputs in the definition. | `string` | n/a | yes |
| <a name="input_percent_traffic"></a> [percent\_traffic](#input\_percent\_traffic) | (Optional) Percent 0.0 - 100.0 of traffic to divert to the canary deployment. | `number` | `null` | no |
| <a name="input_period"></a> [period](#input\_period) | (Optional) - Time period in which the limit applies. Valid values are `DAY`, `WEEK` or `MONTH`. | `string` | `"WEEK"` | no |
| <a name="input_put_rest_api_mode"></a> [put\_rest\_api\_mode](#input\_put\_rest\_api\_mode) | (Optional) Mode of the PutRestApi operation when importing an OpenAPI specification via the body argument (create or update operation). Valid values are merge and overwrite. If unspecificed, defaults to overwrite (for backwards compatibility). This corresponds to the x-amazon-apigateway-put-integration-method extension. If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value. | `string` | `"overwrite"` | no |
| <a name="input_rate_limit"></a> [rate\_limit](#input\_rate\_limit) | (Optional) - The API request steady-state rate limit. | `number` | `10` | no |
| <a name="input_require_authorization_for_cache_control"></a> [require\_authorization\_for\_cache\_control](#input\_require\_authorization\_for\_cache\_control) | (Optional) Whether authorization is required for a cache invalidation request. | `bool` | `true` | no |
| <a name="input_rest_api_policy"></a> [rest\_api\_policy](#input\_rest\_api\_policy) | (Required) JSON formatted policy document that controls access to the API Gateway. For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guide | `string` | `""` | no |
| <a name="input_stage_description"></a> [stage\_description](#input\_stage\_description) | (Optional) Description of the stage. | `string` | `null` | no |
| <a name="input_stage_names"></a> [stage\_names](#input\_stage\_names) | (Required) Name of the stage(s). | `list(string)` | `null` | no |
| <a name="input_stage_variable_overrides"></a> [stage\_variable\_overrides](#input\_stage\_variable\_overrides) | (Optional) Map of overridden stage variables (including new variables) for the canary deployment. | `any` | `{}` | no |
| <a name="input_stage_variables"></a> [stage\_variables](#input\_stage\_variables) | (Optional) Map that defines the stage variables. | `any` | `{}` | no |
| <a name="input_throttling_burst_limit"></a> [throttling\_burst\_limit](#input\_throttling\_burst\_limit) | (Optional) Throttling burst limit. Default: -1 (throttling disabled). | `number` | `-1` | no |
| <a name="input_throttling_rate_limit"></a> [throttling\_rate\_limit](#input\_throttling\_rate\_limit) | (Optional) Throttling rate limit. Default: -1 (throttling disabled). | `number` | `-1` | no |
| <a name="input_unauthorized_cache_control_header_strategy"></a> [unauthorized\_cache\_control\_header\_strategy](#input\_unauthorized\_cache\_control\_header\_strategy) | (Optional) How to handle unauthorized requests for cache invalidation. The available values are `FAIL_WITH_403`, `SUCCEED_WITH_RESPONSE_HEADER`, `SUCCEED_WITHOUT_RESPONSE_HEADER`. | `string` | `"SUCCEED_WITH_RESPONSE_HEADER"` | no |
| <a name="input_usage_plans"></a> [usage\_plans](#input\_usage\_plans) | Map of objects that define the usage plan to be created. | <pre>list(<br>    object({<br>      name         = string<br>      description  = string<br>      burst_limit  = number<br>      rate_limit   = number<br>      quota_limit  = number<br>      quota_offset = number<br>      quota_period = string<br>      stages       = list(string)<br>    })<br>  )</pre> | <pre>[<br>  {<br>    "burst_limit": null,<br>    "description": null,<br>    "name": null,<br>    "quota_limit": null,<br>    "quota_offset": null,<br>    "quota_period": null,<br>    "rate_limit": null,<br>    "stages": [<br>      null<br>    ]<br>  }<br>]</pre> | no |
| <a name="input_use_stage_cache"></a> [use\_stage\_cache](#input\_use\_stage\_cache) | (Optional) Whether the canary deployment uses the stage cache. Defaults to false. | `bool` | `false` | no |
| <a name="input_waf_acl"></a> [waf\_acl](#input\_waf\_acl) | (Required) The ID of the WAF Regional WebACL to create an association. | `string` | `null` | no |
| <a name="input_xray_tracing_enabled"></a> [xray\_tracing\_enabled](#input\_xray\_tracing\_enabled) | (Optional) Whether active tracing with X-ray is enabled. Defaults to false. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_api_gateway_rest_api_arn"></a> [api\_gateway\_rest\_api\_arn](#output\_api\_gateway\_rest\_api\_arn) | Arn of the REST API. |
| <a name="output_api_gateway_rest_api_execution_arn"></a> [api\_gateway\_rest\_api\_execution\_arn](#output\_api\_gateway\_rest\_api\_execution\_arn) | Execution Arn of the REST API. |
| <a name="output_api_gateway_rest_api_id"></a> [api\_gateway\_rest\_api\_id](#output\_api\_gateway\_rest\_api\_id) | Id of the REST API. |
| <a name="output_api_gateway_rest_api_name"></a> [api\_gateway\_rest\_api\_name](#output\_api\_gateway\_rest\_api\_name) | Name of the REST API. |
| <a name="output_api_gateway_rest_api_stage_arn"></a> [api\_gateway\_rest\_api\_stage\_arn](#output\_api\_gateway\_rest\_api\_stage\_arn) | Arn of the deployed stage(s). |
| <a name="output_api_gateway_rest_api_stage_execution_arn"></a> [api\_gateway\_rest\_api\_stage\_execution\_arn](#output\_api\_gateway\_rest\_api\_stage\_execution\_arn) | Execution arn of the deployed stage(s). |
| <a name="output_api_gateway_rest_api_stage_id"></a> [api\_gateway\_rest\_api\_stage\_id](#output\_api\_gateway\_rest\_api\_stage\_id) | Id of the deployed stage(s). |
| <a name="output_api_gateway_rest_api_stage_invoke_url"></a> [api\_gateway\_rest\_api\_stage\_invoke\_url](#output\_api\_gateway\_rest\_api\_stage\_invoke\_url) | Invoke URL of the deployed stage(s). |
| <a name="output_api_gateway_rest_api_stage_web_acl"></a> [api\_gateway\_rest\_api\_stage\_web\_acl](#output\_api\_gateway\_rest\_api\_stage\_web\_acl) | WAF Access Control List for the stage(s) |
<!-- END_TF_DOCS -->
