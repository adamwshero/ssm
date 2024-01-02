resource "aws_ssm_document" "this" {
  for_each = {
    for key in var.document_name : key.name => {
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
    if length(var.document_name) > 0
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
	}

	dynamic "targets" {
		for_each = each.value.name
		content {
			key    = targets.key
			values = [targets.value]
		}
	}
}

resource "aws_instance" "this" {
	ami                         = var.instance_ami
	instance_type               = var.instance_type
	subnet_id                   = var.instance_subnet_id
	associate_public_ip_address = var.associate_public_ip
	iam_instance_profile        = var.instance_profile
	vpc_security_group_ids      = [var.security_group_ids]

	tags = var.tags
}

resource "aws_iam_instance_profile" "this" {
	name = var.instance_profile_name
	role = var.instance_profile_role_arn
}