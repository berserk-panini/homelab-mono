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
  default     = true
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
variable "trigger_prefixes" {
  default     = null
  description = "List of repository-root-relative paths which describe all locations to be tracked for changes."
  type        = list(string)
}
variable "vcs_repo" {
  description = "Configuration of the VCS repository to use for UI/VCS-driven workflow."
  type = optional(object({
    identifier                 = string
    branch                     = optional(string)
    github_app_installation_id = optional(string)
    oauth_token_id             = optional(string)
    tags_regex                 = optional(string)
  }), null)
}
variable "working_directory" {
  default     = null
  description = "A relative path that Terraform will execute within."
  type        = string
}

# tfe_workspace_settings
variable "agent_pool_id" {
  default = null
  description = "ID of the agent pool to associate with this workspace."
  type        = string
}
variable "execution_mode" {
  default     = "remote"
  description = "The execution mode to use."
  type        = string
}
variable "global_remote_state" {
  default     = false
  description = "Whether the workspace allows all workspaces in the organization to access its state data during runs."
  type        = bool
}
variable "remote_state_consumer_ids" {
  default     = []
  description = "The set of workspace IDs set as explicit remote state consumers for the given workspace."
  type        = set(string)
}