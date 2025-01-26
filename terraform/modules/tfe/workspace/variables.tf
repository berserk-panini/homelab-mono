# tfe_workspace
variable "name" {
  description = "Name of the workspace."
  nullable    = false
  type        = string
}
variable "allow_destroy_plan" {
  default     = true
  description = "Whether destroy plans are allowed for this workspace."
  type        = bool
}
variable "assessments_enabled" {
  default     = false
  description = "Whether health checks are enabled for this workspace."
  type        = bool
}
variable "auto_apply" {
  default     = false
  description = "Whether runs are automatically applied for this workspace."
  type        = bool
}
variable "auto_apply_run_trigger" {
  default     = false
  description = "Whether runs are automatically applied when created by outside triggers."
  type        = bool
}
variable "description" {
  description = "Description of the workspace."
  nullable    = false
  type        = string
}
variable "file_triggers_enabled" {
  default     = true
  description = "Whether to filter runs based on the changed files in a VCS push."
  type        = bool
}
variable "force_delete" {
  default     = false
  description = "Whether to allow force deletion or use soft delete."
  type        = bool
}
variable "project_id" {
  description = "ID of the project to associate this workspace with."
  nullable    = false
  type        = string
}
variable "queue_all_runs" {
  default     = true
  description = "Whether the workspace should start automatically performing runs immediately after its creation."
  type        = bool
}
variable "source_name" {
  default     = "HCP Terraform"
  description = "Friendly name for the application or client creating this workspace."
  type        = string
}
variable "source_url" {
  default     = "https://app.terraform.io"
  description = "The URL of the application or client creating this workspace."
  type        = string
}
variable "speculative_enabled" {
  default     = true
  description = "Whether speculative plans are enabled for this workspace."
  type        = bool
}
variable "tag_names" {
  default     = []
  description = "List of tag names to apply."
  type        = list(string)
}
variable "terraform_version" {
  description = "Version of Terraform to use, either exact or constraint."
  nullable    = false
  type        = string
}
variable "trigger_patterns" {
  default     = null
  description = "List of glob patterns describing files to monitor for changes."
  type        = list(string)
}
variable "working_directory" {
  default     = null
  description = "A relative path that Terraform will execute within."
  type        = string
}
variable "vcs_repo" {
  default     = null
  description = "Configuration of the VCS repository as identifier => settings map."
  type = map(object({
    branch          = optional(string, "main")
    github_app_name = optional(string, null)
    oauth_token_id  = optional(string, null)
    tags_regex      = optional(string, null)
  }))
}

# tfe_workspace_settings
variable "agent_pool_id" {
  default     = null
  description = "ID of the agent pool to associate with this workspace."
  type        = string
}
variable "execution_mode" {
  default     = "remote"
  description = "Execution mode to use."
  type        = string
}
variable "global_remote_state" {
  default     = false
  description = "Whether the workspace allows all workspaces in the organization to access its state data during runs."
  type        = bool
}
variable "remote_state_consumer_ids" {
  default     = []
  description = "Set of workspace IDs set as explicit remote state consumers for the given workspace."
  type        = set(string)
}

# tfe_workspace_run
variable "apply" {
  default     = {}
  description = "Settings for apply runs."
  type = object({
    manual_confirm = optional(bool, false)
    retry          = optional(bool, true)
    retry_attempts = optional(number, 1)
    wait_for_run   = optional(bool, false)
  })
}
variable "destroy" {
  default     = {}
  description = "Settings for destroy runs."
  type = object({
    manual_confirm = optional(bool, true)
    retry          = optional(bool, true)
    retry_attempts = optional(number, 1)
    wait_for_run   = optional(bool, false)
  })
}

# tfe_workspace_run_task
variable "run_tasks" {
  default     = {}
  description = "Settings for run tasks to associate with the workspace."
  type = map(object({
    enforcement_level = optional(string, "advisory")
    stages            = list(string)
  }))
}

# tfe_workspace_variable_set
variable "variable_set_ids" {
  default     = []
  description = "Set of variable set IDs to associate with the workspace."
  type        = set(string)
}