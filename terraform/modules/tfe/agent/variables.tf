variable "pool_name" {
  description = "Name of the agent pool."
  type        = string
}

variable "organization_scoped" {
  description = "Whether the agent pool is scoped to all workspaces in the organization."
  type        = bool
  default     = true
}

variable "allowed_workspace_ids" {
  description = "IDs of the workspaces that are allowed to use the agent pool."
  type        = set(string)
  default     = []
}

variable "agent_count" {
  description = "Number of agents to create."
  type        = number
  default     = 1
}