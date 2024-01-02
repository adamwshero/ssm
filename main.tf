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

resource "aws_instance" "this" {
	ami                         = var.instance_ami
	instance_type               = var.instance_type
	subnet_id                   = var.instance_subnet_id
	associate_public_ip_address = var.associate_public_ip
	iam_instance_profile        = var.instance_profile
	vpc_security_group_ids      = [var.security_group_ids]

	tags = var.tags
}

locals {
  iam_role_name = try(coalesce(var.iam_role_name, var.name), "")
}

data "aws_iam_policy_document" "assume_role_policy" {
  count = var.create && var.create_iam_instance_profile ? 1 : 0

  statement {
    sid     = "EC2AssumeRole"
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.${data.aws_partition.current.dns_suffix}"]
    }
  }
}

resource "aws_iam_role" "this" {
  count = var.create_iam_instance_profile ? 1 : 0

  name        = var.iam_role_use_name_prefix ? null : local.iam_role_name
  name_prefix = var.iam_role_use_name_prefix ? "${local.iam_role_name}-" : null
  path        = var.iam_role_path
  description = var.iam_role_description

  assume_role_policy    = data.aws_iam_policy_document.assume_role_policy[0].json
  permissions_boundary  = var.iam_role_permissions_boundary
  force_detach_policies = true

  tags = merge(var.tags, var.iam_role_tags)
}

resource "aws_iam_role_policy_attachment" "this" {
  for_each = { for k, v in var.iam_role_policies : k => v if var.create_iam_instance_profile }

  policy_arn = each.value
  role       = aws_iam_role.this[0].name
}

resource "aws_iam_instance_profile" "this" {
  count = var.create_iam_instance_profile ? 1 : 0

  role = aws_iam_role.this[0].name

  name        = var.iam_role_use_name_prefix ? null : local.iam_role_name
  name_prefix = var.iam_role_use_name_prefix ? "${local.iam_role_name}-" : null
  path        = var.iam_role_path

  tags = merge(var.tags, var.iam_role_tags)

  lifecycle {
    create_before_destroy = true
  }
}