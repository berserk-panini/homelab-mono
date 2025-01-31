# provider.tfe
variable "token" {
  description = "The HCP Terraform API token to use for authentication."
  ephemeral   = true
  type        = string
}

# tfe_organization
variable "email" {
  description = "Email address of the organization owner."
  type        = string
}
variable "organization" {
  description = "The default HCP Terraform organization that resources should belong to."
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
    auto_apply          = optional(bool, false)
    description         = string
    project             = string
    queue_all_runs      = optional(bool, true)
    speculative_enabled = optional(bool, true)
    tag_names           = optional(list(string))
    tf_version          = optional(string, "~>1.10.0")
    trigger_patterns    = optional(list(string))
    trigger_prefixes    = optional(list(string))
    working_directory   = string
    variable_sets       = optional(set(string), [])
    variables = optional(object({
      env       = optional(map(string), {})
      hcl       = optional(map(string), {})
      plain     = optional(map(string), {})
      sensitive = optional(set(string), [])
    }), {})
    vcs_repo = optional(map(object({
      branch          = optional(string, "main")
      github_app_name = string
    })), null)
  }))
}

variable "variable_sets" {
  default     = {}
  description = "Variable sets to create as name => settings map."
  type = map(object({
    description    = string
    global         = optional(bool, false)
    priority       = optional(bool, false)
    project        = string
    project_global = optional(bool, false)
    variables = optional(object({
      env       = optional(map(string), {})
      hcl       = optional(map(string), {})
      plain     = optional(map(string), {})
      sensitive = optional(set(string), [])
    }), {})
  }))
}