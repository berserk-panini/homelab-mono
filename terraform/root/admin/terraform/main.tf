resource "tfe_organization" "this" {
  email                                                   = var.email
  name                                                    = var.organization
  aggregated_commit_status_enabled                        = true
  collaborator_auth_policy                                = "two_factor_mandatory"
  cost_estimation_enabled                                 = true
  send_passing_statuses_for_untriggered_speculative_plans = false
  speculative_plan_management_enabled                     = true
}

resource "tfe_project" "this" {
  for_each = var.projects

  name        = each.key
  description = each.value
}

module "variable_set" {
  for_each = var.variable_sets
  source   = "../../../modules/tfe/variable_set"

  name           = each.key
  description    = each.value.description
  global         = each.value.global
  priority       = each.value.priority
  project_id     = tfe_project.this[each.value.project].id
  project_global = each.value.project_global
  env_vars       = each.value.env_vars
  hcl_vars       = each.value.hcl_vars
  plain_vars     = each.value.plain_vars
  sensitive_vars = each.value.sensitive_vars
}

module "workspace" {
  for_each = var.workspaces
  source   = "../../../modules/tfe/workspace"

  name                = each.key
  auto_apply          = each.value.auto_apply
  description         = each.value.description
  project_id          = tfe_project.this[each.value.project].id
  queue_all_runs      = each.value.queue_all_runs
  speculative_enabled = each.value.speculative_enabled
  tag_names           = each.value.tag_names
  terraform_version   = each.value.tf_version
  trigger_patterns    = each.value.trigger_patterns
  vcs_repo            = each.value.vcs_repo
  working_directory   = each.value.working_directory

  variable_set_ids = [for v in each.value.variable_sets : module.variable_set[v].id]
}