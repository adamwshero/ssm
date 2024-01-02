module "ssm" {
  source = "git::git@github.com:adamwshero/terraform-aws-ssm.git//.?ref=1.0.0"

  tags = local.tags
}
