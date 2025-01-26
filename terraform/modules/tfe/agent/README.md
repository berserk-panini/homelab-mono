# tfe/agent

This module creates an agent pool and its members in HCP Terraform.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | ~>0.63.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | ~>0.63.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_agent_pool.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/agent_pool) | resource |
| [tfe_agent_pool_allowed_workspaces.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/agent_pool_allowed_workspaces) | resource |
| [tfe_agent_token.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/agent_token) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_agent_count"></a> [agent\_count](#input\_agent\_count) | Number of agents to create. | `number` | `1` | no |
| <a name="input_allowed_workspace_ids"></a> [allowed\_workspace\_ids](#input\_allowed\_workspace\_ids) | IDs of the workspaces that are allowed to use the agent pool. | `set(string)` | `[]` | no |
| <a name="input_organization_scoped"></a> [organization\_scoped](#input\_organization\_scoped) | Whether the agent pool is scoped to all workspaces in the organization. | `bool` | `true` | no |
| <a name="input_pool_name"></a> [pool\_name](#input\_pool\_name) | Name of the agent pool. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_agent_pool_id"></a> [agent\_pool\_id](#output\_agent\_pool\_id) | n/a |
| <a name="output_agent_tokens"></a> [agent\_tokens](#output\_agent\_tokens) | n/a |
| <a name="output_allowed_workspaces_rule_id"></a> [allowed\_workspaces\_rule\_id](#output\_allowed\_workspaces\_rule\_id) | n/a |
<!-- END_TF_DOCS -->