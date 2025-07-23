resource "spacelift_environment_variable" "aws_infra_bse" {
  stack_id    = "aws-infra"
  name        = "TF_VAR_budget_subscription_emails"
  value       = jsonencode(["aws@pratikthakare.com", "patrick.thakare123@gmail.com"])
  write_only  = false
  description = "List of emails to which budget notifications will be sent"
}

resource "spacelift_environment_variable" "aws_account_id" {
  stack_id    = "spacelift-iac"
  name        = "TF_VAR_aws_account_id"
  value       = var.aws_account_id
  write_only  = true
  description = "Holds the account id of the primary AWS account"
}

