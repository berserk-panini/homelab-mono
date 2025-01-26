resource "tfe_variable" "env" {
  for_each = var.env_vars

  key             = each.key
  value           = each.value
  category        = "env"
  variable_set_id = var.variable_set_id
  workspace_id    = var.workspace_id
}

resource "tfe_variable" "hcl" {
  for_each = var.hcl_vars

  key             = each.key
  value           = each.value
  category        = "terraform"
  hcl             = true
  variable_set_id = var.variable_set_id
  workspace_id    = var.workspace_id
}

resource "tfe_variable" "plain" {
  for_each = var.plain_vars

  key             = each.key
  value           = each.value
  category        = "terraform"
  variable_set_id = var.variable_set_id
  workspace_id    = var.workspace_id
}

resource "tfe_variable" "sensitive" {
  for_each = var.sensitive_vars

  key             = each.key
  value           = "changeme"
  category        = "terraform"
  sensitive       = true
  variable_set_id = var.variable_set_id
  workspace_id    = var.workspace_id
}