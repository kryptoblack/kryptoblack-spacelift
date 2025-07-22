resource "spacelift_stack" "spacelift-iac" {
  name        = "spacelift-iac"
  description = "Manages this Spacelift organization and objects within"
  space_id    = "root"

  repository = "spacelift-iac"
  branch     = "main"

  terraform_version            = "1.10.3"
  terraform_workflow_tool      = "OPEN_TOFU"
  terraform_smart_sanitization = true

  administrative                   = true
  enable_well_known_secret_masking = true
  enable_sensitive_outputs_upload  = false
  github_action_deploy             = false
}
