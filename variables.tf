########################
# SSM Document Variables
########################
variable "documents" {
  description = "Map of documents."
  type        = any
  default     = {}
}

variable "document_name" {
  description = "(Required) The name of the document."
  type        = string
  default     = null
}

variable "attachments_source" {
  description = "(Optional) One or more configuration blocks describing attachments sources to a version of a document. Defined below."
  type        = string
  default     = null
}

variable "content" {
  description = "(Required) The JSON or YAML content of the document."
  type        = string
  default     = null
}

variable "document_format" {
  description = "(Optional, defaults to JSON) The format of the document. Valid document types include: `JSON` and `YAML`"
  type        = string
  default     = "JSON"
}

variable "document_type" {
  description = "(Required) The type of the document. Valid document types include: `Automation`, `Command`, `Package`, `Policy`, and `Session`."
  type        = string
  default     = null
}

variable "permissions" {
  description = "(Optional) Additional Permissions to attach to the document. See (Permissions)[https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_document#permissions] below for details."
  type        = string
  default     = null
}

variable "target_type" {
  description = "The target type which defines the kinds of resources the document can run on. For example, /AWS::EC2::Instance. For a list of valid resource types, see AWS Resource Types Reference (http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html)"
  type        = string
  default     = null
}

variable "tags" {
  description = "(Optional) A map of tags to assign to the object. If configured with a provider default_tags (configuration block)[https://registry.terraform.io/providers/hashicorp/aws/latest/docs#default_tags-configuration-block] present, tags with matching keys will overwrite those defined at the provider-level."
  type        = any
  default     = {}
}

variable "version_name" {
  description = "(Optional) A field specifying the version of the artifact you are creating with the document. For example, `"Release 12, Update 6"`. This value is unique across all versions of a document and cannot be changed for an existing document version."
  type        = string
  default     = null
}

###########################
# SSM Association Variables
###########################
variable "ssm_association" {
  description = "Map of ssm associations."
  type        = any
  default     = {}
}

variable "apply_only_at_cron_interval" {
  description = "(Optional) By default, when you create a new or update associations, the system runs it immediately and then according to the schedule you specified. Enable this option if you do not want an association to run immediately after you create or update it. This parameter is not supported for rate expressions. Default: false."
  type        = bool
  default     = false
}

variable "association_name" {
  description = "(Optional) The descriptive name for the association."
  type        = string
  default     = null
}

variable "automation_target_parameter_name" {
  description = "(Optional) Specify the target for the association. This target is required for associations that use an Automation document and target resources by using rate controls. This should be set to the SSM document parameter that will define how your automation will branch out."
  type        = string
  default     = null
}

variable "compliance_severity" {
  description = "(Optional) The compliance severity for the association. Can be one of the following: `UNSPECIFIED`, `LOW`, `MEDIUM`, `HIGH` or `CRITICAL`"
  type        = string
  default     = null
}

variable "document_version" {
  description = "(Optional) The document version you want to associate with the target(s). Can be a specific version or the default version."
  type        = string
  default     = null
}

variable "max_concurrency" {
  description = "(Optional) The maximum number of targets allowed to run the association at the same time. You can specify a number, for example 10, or a percentage of the target set, for example 10%."
  type        = string
  default     = null
}

variable "max_errors" {
  description = "(Optional) The number of errors that are allowed before the system stops sending requests to run the association on additional targets. You can specify a number, for example 10, or a percentage of the target set, for example 10%. If you specify a threshold of 3, the stop command is sent when the fourth error is returned. If you specify a threshold of 10% for 50 associations, the stop command is sent when the sixth error is returned."
  type        = integer
  default     = null
}

variable "output_location" {
  description = "(Optional) An output location block. Output Location is documented below."
  type        = string
  default     = null
}

variable "parameters" {
  description = "(Optional) A block of arbitrary string parameters to pass to the SSM document."
  type        = string
  default     = null
}

variable "schedule_expression" {
  description = "(Optional) A (cron or rate expression)[https://docs.aws.amazon.com/systems-manager/latest/userguide/reference-cron-and-rate-expressions.html] that specifies when the association runs."
  type        = string
  default     = null
}

variable "sync_compliance" {
  description = "(Optional) The mode for generating association compliance. You can specify `AUTO` or `MANUAL`."
  type        = string
  default     = null
}

variable "targets" {
  description = "(Optional) A block containing the targets of the SSM association. Targets are documented below. AWS currently supports a maximum of 5 targets."
  type        = string
  default     = null
}

variable "wait_for_success_timeout_seconds" {
  description = "(Optional) The number of seconds to wait for the association status to be Success. If Success status is not reached within the given time, create opration will fail."
  type        = string
  default     = null
}

variable "key" {
  description = "(Required) Either `InstanceIds` or `tag:Tag` Name to specify an EC2 tag."
  type        = string
  default     = "InstanceIds"
}

variable "values" {
  description = "(Required) A list of instance IDs or tag values. AWS currently limits this list size to one value."
  type        = list(string)
  default     = null
}