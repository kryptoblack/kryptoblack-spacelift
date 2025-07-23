resource "spacelift_environment_variable" "aws_infra_bse" {
  stack_id    = spacelift_stack.aws_infra.name
  name        = "TF_VAR_budget_subscription_emails"
  value       = jsonencode(["aws@pratikthakare.com", "patrick.thakare123@gmail.com"])
  write_only  = false
  description = "List of emails to which budget notifications will be sent"
}

resource "spacelift_environment_variable" "journeyly_dev_public_ssh" {
  stack_id    = spacelift_stack.aws_infra.name
  name        = "TF_VAR_journeyly_dev_public_ssh"
  value       = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHni2BNWjfX9GXVavqo18c1c1qoKl47UuGaTCef0BbOB kryptoblack@caramel-v5"
  write_only  = false
  description = "Holds the public key that will be used in journeyly dev server"
}

resource "spacelift_environment_variable" "aws_account_id" {
  stack_id    = spacelift_stack.spacelift_iac.name
  name        = "TF_VAR_aws_account_id"
  value       = var.aws_account_id
  write_only  = true
  description = "Holds the account id of the primary AWS account"
}
