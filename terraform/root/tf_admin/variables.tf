variable "organization" {
  description = "The default HCP Terraform organization that resources should belong to."
  type        = string
}

variable "token" {
  description = "The HCP Terraform API token to use for authentication."
  ephemeral   = true
  type        = string
}

variable "email" {
  description = "Email address of the organization owner."
  type        = string
}

variable "projects" {
  default     = {}
  description = "Projects to create as name => description map."
  type        = map(string)
}

variable "workspaces" {
  default     = {}
  description = "Workspaces to create as name => settings map."
  type = map(object({
    auto_apply          = optional(bool)
    description         = string
    project             = string
    queue_all_runs      = optional(bool)
    speculative_enabled = optional(bool)
    source_name         = optional(string)
    source_url          = optional(string)
    tag_names           = optional(list(string))
    tf_version          = optional(string, "~>1.10.0")
    trigger_patterns    = optional(list(string))
    trigger_prefixes    = optional(list(string))
    working_directory   = string
    vcs_repo = optional(map(object({
      branch          = optional(string)
      github_app_name = string
    })), null)
  }))
}