resource "tfe_workspace" "this" {
  name                   = var.name
  allow_destroy_plan     = var.allow_destroy_plan
  assessments_enabled    = var.assessments_enabled
  auto_apply             = var.auto_apply
  auto_apply_run_trigger = var.auto_apply_run_trigger
  description            = var.description
  file_triggers_enabled  = var.file_triggers_enabled
  force_delete           = var.force_delete
  project_id             = var.project_id
  queue_all_runs         = var.queue_all_runs
  source_name            = var.source_name
  source_url             = var.source_url
  speculative_enabled    = var.speculative_enabled
  tag_names              = var.tag_names
  terraform_version      = var.terraform_version
  trigger_patterns       = var.trigger_patterns
  trigger_prefixes       = var.trigger_prefixes
  vcs_repo               = var.vcs_repo
  working_directory      = var.working_directory

  lifecycle {
    ignore_changes = [
      source_url,
    ]
  }
}

resource "tfe_workspace_settings" "this" {
  workspace_id              = tfe_workspace.this.id
  agent_pool_id             = var.agent_pool_id
  execution_mode            = var.execution_mode
  global_remote_state       = var.global_remote_state
  remote_state_consumer_ids = var.remote_state_consumer_ids
}

resource "tfe_workspace_run" "this" {
  workspace_id = tfe_workspace.this.id
  depends_on   = var.depends_on_ids

  dynamic "apply" {
    for_each = var.queue_all_runs ? [] : [tfe_workspace.this.id]
    content {
      manual_confirm = var.apply.manual_confirm
      retry          = var.apply.retry
      retry_attempts = var.apply.retry_attempts
      wait_for_run   = var.apply.wait_for_run
    }
  }

  destroy {
    manual_confirm = var.destroy.manual_confirm
    retry          = var.destroy.retry
    retry_attempts = var.destroy.retry_attempts
    wait_for_run   = var.destroy.wait_for_run
  }
}