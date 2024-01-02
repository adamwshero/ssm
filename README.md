[![SWUbanner](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/banner2-direct.svg)](https://github.com/vshymanskyy/StandWithUkraine/blob/main/docs/README.md)

![Terraform](/assets/tf_aws.jpg)
<br>
<br>
<br>
<br>
![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/adamwshero/terraform-aws-ssm?color=lightgreen&label=latest%20tag%3A&style=for-the-badge)
<br>
<br>
# terraform-aws-ssm


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
| [aws_iam_instance_profile.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |
| [aws_instance.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_ssm_association.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_association) | resource |
| [aws_ssm_document.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_document) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_apply_only_at_cron_interval"></a> [apply\_only\_at\_cron\_interval](#input\_apply\_only\_at\_cron\_interval) | (Optional) By default, when you create a new or update associations, the system runs it immediately and then according to the schedule you specified. Enable this option if you do not want an association to run immediately after you create or update it. This parameter is not supported for rate expressions. Default: false. | `bool` | `false` | no |
| <a name="input_association_name"></a> [association\_name](#input\_association\_name) | (Optional) The descriptive name for the association. | `string` | `null` | no |
| <a name="input_attachments_source"></a> [attachments\_source](#input\_attachments\_source) | (Optional) One or more configuration blocks describing attachments sources to a version of a document. Defined below. | `string` | `null` | no |
| <a name="input_automation_target_parameter_name"></a> [automation\_target\_parameter\_name](#input\_automation\_target\_parameter\_name) | (Optional) Specify the target for the association. This target is required for associations that use an Automation document and target resources by using rate controls. This should be set to the SSM document parameter that will define how your automation will branch out. | `string` | `null` | no |
| <a name="input_compliance_severity"></a> [compliance\_severity](#input\_compliance\_severity) | (Optional) The compliance severity for the association. Can be one of the following: `UNSPECIFIED`, `LOW`, `MEDIUM`, `HIGH` or `CRITICAL` | `string` | `null` | no |
| <a name="input_content"></a> [content](#input\_content) | (Required) The JSON or YAML content of the document. | `string` | `null` | no |
| <a name="input_document_format"></a> [document\_format](#input\_document\_format) | (Optional, defaults to JSON) The format of the document. Valid document types include: `JSON` and `YAML` | `string` | `"JSON"` | no |
| <a name="input_document_name"></a> [document\_name](#input\_document\_name) | (Required) The name of the document. | `string` | `null` | no |
| <a name="input_document_type"></a> [document\_type](#input\_document\_type) | (Required) The type of the document. Valid document types include: `Automation`, `Command`, `Package`, `Policy`, and `Session`. | `string` | `null` | no |
| <a name="input_document_version"></a> [document\_version](#input\_document\_version) | (Optional) The document version you want to associate with the target(s). Can be a specific version or the default version. | `string` | `null` | no |
| <a name="input_documents"></a> [documents](#input\_documents) | Map of documents. | `any` | `{}` | no |
| <a name="input_key"></a> [key](#input\_key) | (Required) Either `InstanceIds` or `tag:Tag` Name to specify an EC2 tag. | `string` | `"InstanceIds"` | no |
| <a name="input_max_concurrency"></a> [max\_concurrency](#input\_max\_concurrency) | (Optional) The maximum number of targets allowed to run the association at the same time. You can specify a number, for example 10, or a percentage of the target set, for example 10%. | `string` | `null` | no |
| <a name="input_max_errors"></a> [max\_errors](#input\_max\_errors) | (Optional) The number of errors that are allowed before the system stops sending requests to run the association on additional targets. You can specify a number, for example 10, or a percentage of the target set, for example 10%. If you specify a threshold of 3, the stop command is sent when the fourth error is returned. If you specify a threshold of 10% for 50 associations, the stop command is sent when the sixth error is returned. | `integer` | `null` | no |
| <a name="input_output_location"></a> [output\_location](#input\_output\_location) | (Optional) An output location block. Output Location is documented below. | `string` | `null` | no |
| <a name="input_parameters"></a> [parameters](#input\_parameters) | (Optional) A block of arbitrary string parameters to pass to the SSM document. | `string` | `null` | no |
| <a name="input_permissions"></a> [permissions](#input\_permissions) | (Optional) Additional Permissions to attach to the document. See (Permissions)[https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_document#permissions] below for details. | `string` | `null` | no |
| <a name="input_schedule_expression"></a> [schedule\_expression](#input\_schedule\_expression) | (Optional) A (cron or rate expression)[https://docs.aws.amazon.com/systems-manager/latest/userguide/reference-cron-and-rate-expressions.html] that specifies when the association runs. | `string` | `null` | no |
| <a name="input_ssm_association"></a> [ssm\_association](#input\_ssm\_association) | Map of ssm associations. | `any` | `{}` | no |
| <a name="input_sync_compliance"></a> [sync\_compliance](#input\_sync\_compliance) | (Optional) The mode for generating association compliance. You can specify `AUTO` or `MANUAL`. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) A map of tags to assign to the object. If configured with a provider default\_tags (configuration block)[https://registry.terraform.io/providers/hashicorp/aws/latest/docs#default_tags-configuration-block] present, tags with matching keys will overwrite those defined at the provider-level. | `any` | `{}` | no |
| <a name="input_target_type"></a> [target\_type](#input\_target\_type) | The target type which defines the kinds of resources the document can run on. For example, /AWS::EC2::Instance. For a list of valid resource types, see AWS Resource Types Reference (http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html) | `string` | `null` | no |
| <a name="input_targets"></a> [targets](#input\_targets) | (Optional) A block containing the targets of the SSM association. Targets are documented below. AWS currently supports a maximum of 5 targets. | `string` | `null` | no |
| <a name="input_values"></a> [values](#input\_values) | (Required) A list of instance IDs or tag values. AWS currently limits this list size to one value. | `list(string)` | `null` | no |
| <a name="input_version_name"></a> [version\_name](#input\_version\_name) | (Optional) A field specifying the version of the artifact you are creating with the document. For example, 'Release 12, Update 6'. This value is unique across all versions of a document and cannot be changed for an existing document version. | `string` | `null` | no |
| <a name="input_wait_for_success_timeout_seconds"></a> [wait\_for\_success\_timeout\_seconds](#input\_wait\_for\_success\_timeout\_seconds) | (Optional) The number of seconds to wait for the association status to be Success. If Success status is not reached within the given time, create opration will fail. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance_ip"></a> [instance\_ip](#output\_instance\_ip) | IP of the EC2 instance. |
<!-- END_TF_DOCS -->

