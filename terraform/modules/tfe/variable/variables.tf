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

variable "variable_set_id" {
  default     = null
  description = "ID of the variable set that owns these variables."
  type        = string
}

variable "workspace_id" {
  default     = null
  description = "ID of the workspace that owns these variables."
  type        = string
}