### Terraform Basic Example
```
module "ssm" {
  source = "git::git@github.com:adamwshero/terraform-aws-ssm.git//.?ref=1.0.0"

inputs = {

    tags = local.tags
  }
}
```