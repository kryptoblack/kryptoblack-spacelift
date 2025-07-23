locals {
  role_arn = "arn:aws:iam::${var.aws_account_id}:role/${var.aws_role_name}"
}

resource "spacelift_aws_integration" "this" {
  name                           = var.aws_role_name
  role_arn                       = local.role_arn
  generate_credentials_in_worker = false
}

resource "spacelift_aws_integration_attachment" "aws_infra" {
  integration_id = spacelift_aws_integration.this.id
  stack_id       = spacelift_stack.aws_infra.id
  read           = true
  write          = true
}

resource "spacelift_aws_integration_attachment" "aws_journeyly" {
  integration_id = spacelift_aws_integration.this.id
  stack_id       = spacelift_stack.aws_journeyly.id
  read           = true
  write          = true
}
