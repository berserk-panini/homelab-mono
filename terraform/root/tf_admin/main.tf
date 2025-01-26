import {
  id = var.organization
  to = tfe_organization.this
}

resource "tfe_organization" "this" {
  email                                                   = var.email
  name                                                    = var.organization
  aggregated_commit_status_enabled                        = true
  collaborator_auth_policy                                = "two_factor_mandatory"
  cost_estimation_enabled                                 = true
  send_passing_statuses_for_untriggered_speculative_plans = false
  speculative_plan_management_enabled                     = true
  assessments_enforced                                    = true
}

resource "tfe_project" "this" {
  for_each = var.projects

  name        = each.key
  description = each.value
}

module "workspace" {
  for_each = var.workspaces
  source   = "../../modules/tfe/workspace"

  name                = each.key
  auto_apply          = each.value.auto_apply
  description         = each.value.description
  project_id          = tfe_project.this[each.value.project].id
  queue_all_runs      = each.value.queue_all_runs
  speculative_enabled = each.value.speculative_enabled
  tag_names           = each.value.tag_names
  terraform_version   = each.value.tf_version
  trigger_patterns    = each.value.trigger_patterns
  trigger_prefixes    = each.value.trigger_prefixes
  vcs_repo            = each.value.vcs_repo
  working_directory   = each.value.working_directory
}