variable "aws_account_id" {
  type      = string
  sensitive = true
}

variable "aws_role_name" {
  type    = string
  default = "iac"
}
