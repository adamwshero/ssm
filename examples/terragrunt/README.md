### Terragrunt Basic Example
```
terraform {
  source = "git::git@github.com:adamwshero/ssm.git//.?ref=1.0.0"
}

inputs = {

  tags = local.tags
}
```