resource "tfe_variable_set" "this" {
  name              = var.name
  description       = var.description
  global            = var.global
  parent_project_id = var.project_id
  priority          = var.priority
}

module "variable" {
  source = "../variable"

  env_vars        = var.env_vars
  hcl_vars        = var.hcl_vars
  plain_vars      = var.plain_vars
  sensitive_vars  = var.sensitive_vars
  variable_set_id = tfe_variable_set.this.id
}