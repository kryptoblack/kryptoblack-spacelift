data "aws_caller_identity" "current" {}

locals {
  role_name = "iac"
  role_arn  = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/${local.role_name}"
}

resource "spacelift_aws_integration" "this" {
  name                           = local.role_name
  role_arn                       = local.role_arn
  generate_credentials_in_worker = false
}

