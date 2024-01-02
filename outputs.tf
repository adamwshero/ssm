#############################
# EC2 Instance
#############################

output "instance_ip" {
  description = "IP of the EC2 instance."
  value = aws_instance.this.public_ip
}

#############################
# IAM Role / Instance Profile
#############################

output "iam_role_name" {
  description = "Name of the IAM role."
  value       = try(aws_iam_role.this[0].name, null)
}

output "iam_role_arn" {
  description = "Amazon Resource Name (ARN) specifying the IAM role."
  value       = try(aws_iam_role.this[0].arn, null)
}

output "iam_role_unique_id" {
  description = "Stable and unique string identifying the IAM role."
  value       = try(aws_iam_role.this[0].unique_id, null)
}

output "iam_instance_profile_arn" {
  description = "ARN assigned by AWS to the instance profile."
  value       = try(aws_iam_instance_profile.this[0].arn, null)
}

output "iam_instance_profile_id" {
  description = "Instance profile's ID."
  value       = try(aws_iam_instance_profile.this[0].id, null)
}

output "iam_instance_profile_unique" {
  description = "Stable and unique string identifying the IAM instance profile."
  value       = try(aws_iam_instance_profile.this[0].unique_id, null)
}