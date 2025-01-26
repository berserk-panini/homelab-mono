resource "tfe_agent_pool" "this" {
  name                = var.pool_name
  organization_scoped = var.organization_scoped
}

resource "tfe_agent_pool_allowed_workspaces" "this" {
  count = var.organization_scoped ? 0 : 1

  agent_pool_id         = tfe_agent_pool.this.id
  allowed_workspace_ids = var.allowed_workspace_ids
}

resource "tfe_agent_token" "this" {
  count = var.agent_count

  agent_pool_id = tfe_agent_pool.this.id
  description   = format("%s-%s", var.pool_name, count.index)
}