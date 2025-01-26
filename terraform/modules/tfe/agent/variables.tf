variable "pool_name" {
  description = "Name of the agent pool."
  nullable    = false
  type        = string
}

variable "organization_scoped" {
  default     = true
  description = "Whether the agent pool is scoped to all workspaces in the organization."
  type        = bool
}

variable "allowed_workspace_ids" {
  default     = []
  description = "IDs of the workspaces that are allowed to use the agent pool."
  type        = set(string)
}

variable "agent_count" {
  default     = 1
  description = "Number of agents to create."
  type        = number
}