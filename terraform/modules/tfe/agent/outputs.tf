output "allowed_workspaces_rule_id" {
  value = tfe_agent_pool_allowed_workspaces.this.id
}

output "agent_pool_id" {
  value = tfe_agent_pool.this.id
}

output "agent_tokens" {
  value = {
    for v in tfe_agent_token.this : v.description => v.token
  }
}