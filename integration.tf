locals {
  role_arn = "arn:aws:iam::${var.aws_account_id}:role/${var.aws_role_name}"
}

resource "spacelift_aws_integration" "this" {
  name                           = var.aws_role_name
  role_arn                       = local.role_arn
  generate_credentials_in_worker = false
}

