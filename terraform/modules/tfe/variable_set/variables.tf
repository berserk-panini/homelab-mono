# tfe_variable_set
variable "name" {
  nullable    = false
  description = "Name of the variable set."
  type        = string
}
variable "description" {
  nullable    = false
  description = "Description of the variable set."
  type        = string
}
variable "global" {
  default     = false
  description = "Whether the variable set applies to all workspaces."
  type        = bool
}
variable "priority" {
  default     = false
  description = "Whether the variable can be over-written by more specific scopes."
  type        = bool
}
variable "project_id" {
  default     = null
  description = "ID of the project that should own this variable set."
  type        = string
}

# module.variable
variable "env_vars" {
  default     = {}
  description = "Environment variables to create as name => value map."
  type        = map(string)
}
variable "hcl_vars" {
  default     = {}
  description = "HCL code variables to create as name => value map."
  type        = map(string)
}
variable "plain_vars" {
  default     = {}
  description = "Plaintext variables to create as name => value map."
  type        = map(string)
}
variable "sensitive_vars" {
  default     = []
  description = "List of sensitive variables to create with default value of `changeme`."
  type        = set(string)
}