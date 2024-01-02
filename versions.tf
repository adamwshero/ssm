terraform {
  required_version = ">= 0.13.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.30.0"
    }
    # Uncomment the lines below to update the README markdown of inputs, outputs, & requirements `terraform-docs markdown table --output-file README.md --output-mode inject .`
    # terragrunt = {
    #  source = "gruntworks/terragrunt"
    #  version = ">= 0.28.0"
    # }
  }
}
