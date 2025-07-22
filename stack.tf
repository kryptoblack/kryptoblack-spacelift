resource "spacelift_stack" "spacelift-iac" {
  name = "spacelift-iac"
  space_id = "root"

  repository = "spacelift-iac"
  branch = "main"

  terraform_version = "1.10.3"
  terraform_workflow_tool = "OPEN_TOFU"
  terraform_smart_sanitization = true

  administrative = true
  enable_well_known_secret_masking = true
  github_action_deploy = false
}
