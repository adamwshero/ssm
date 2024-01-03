locals {
  type = var.type != null ? var.type : (
    length(var.values) > 0 ? "StringList" : (
      can(tostring(var.value)) ? (try(tobool(var.secure_type) == true, false) ? "SecureString" : "String") : "StringList"
  ))
  secure_type = local.type == "SecureString"
  list_type   = local.type == "StringList"
  string_type = local.type == "String"
  value       = local.list_type ? (length(var.values) > 0 ? jsonencode(var.values) : var.value) : var.value
}

resource "aws_ssm_document" "this" {
  for_each = {
    for key in var.documents : key.name => {
			name               = key.document_name
			attachments_source = key.attachments_source 
			content            = key.content
			document_format    = key.document_format
			document_type      = key.document_type
			permissions        = key.permissions
			target_type        = key.target_type
			tags               = key.tags
			version_name       = key.version_name
		}
    if length(var.documents) > 0
  }
}

resource "aws_ssm_association" "this" {
  for_each = {
    for key in var.ssm_association : key.name => {
			name                             = aws_ssm_document.this.name
			apply_only_at_cron_interval      = var.apply_only_at_cron_interval
			association_name                 = var.association_name
			automation_target_parameter_name = var.automation_target_parameter_name
			compliance_severity              = var.compliance_severity 
			document_version                 = var.document_version
			max_concurrency                  = var.max_concurrency
			max_errors                       = var.max_errors
			output_location                  = var.output_location
			parameters                       = var.parameters
			schedule_expression              = var.schedule_expression
			sync_compliance                  = var.sync_compliance
			targets                          = var.targets
			wait_for_success_timeout_seconds = var.wait_for_success_timeout_seconds
		}
    if length(var.documents) > 0
	}

	dynamic "targets" {
		for_each = each.value.name
		content {
			key    = targets.key
			values = [targets.value]
		}
	}
}

resource "aws_ssm_parameter" "this" {
  count = var.create_parameter && !var.ignore_value_changes ? 1 : 0

  name        = var.name
  type        = local.type
  description = var.description

  value          = local.secure_type ? local.value : null
  insecure_value = local.list_type || local.string_type ? local.value : null

  tier            = var.tier
  key_id          = local.secure_type ? var.key_id : null
  allowed_pattern = var.allowed_pattern
  data_type       = var.data_type

  tags = var.tags
}

resource "aws_ssm_parameter" "ignore_value" {
  count = var.create_parameter && var.ignore_value_changes ? 1 : 0

  name        = var.name
  type        = local.type
  description = var.description

  value          = local.secure_type ? local.value : null
  insecure_value = local.list_type || local.string_type ? local.value : null

  tier            = var.tier
  key_id          = local.secure_type ? var.key_id : null
  allowed_pattern = var.allowed_pattern
  data_type       = var.data_type

  tags = var.tags

  lifecycle {
    ignore_changes = [
      insecure_value,
      value
    ]
  }
}