# admin/terraform

Implements an administrative root module used for defining the Terraform organization as code,
_allowing Terraform to declaratively manage itself_ 🤯

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

| Name | Source | Version |
|------|--------|---------|
| <a name="module_workspace"></a> [workspace](#module\_workspace) | ../../../modules/tfe/workspace | n/a |

## Resources

| Name | Type |
|------|------|
| [tfe_organization.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/organization) | resource |
| [tfe_project.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/project) | resource |
| [tfe_project.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/project) | data source |
| [tfe_workspace.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/workspace) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_email"></a> [email](#input\_email) | Email address of the organization owner. | `string` | n/a | yes |
| <a name="input_organization"></a> [organization](#input\_organization) | The default HCP Terraform organization that resources should belong to. | `string` | n/a | yes |
| <a name="input_projects"></a> [projects](#input\_projects) | Projects to create as name => description map. | `map(string)` | `{}` | no |
| <a name="input_token"></a> [token](#input\_token) | The HCP Terraform API token to use for authentication. | `string` | n/a | yes |
| <a name="input_workspaces"></a> [workspaces](#input\_workspaces) | Workspaces to create as name => settings map. | <pre>map(object({<br/>    auto_apply          = optional(bool, false)<br/>    description         = string<br/>    project             = string<br/>    queue_all_runs      = optional(bool, true)<br/>    speculative_enabled = optional(bool, true)<br/>    tag_names           = optional(list(string))<br/>    tf_version          = optional(string, "~>1.10.0")<br/>    trigger_patterns    = optional(list(string))<br/>    trigger_prefixes    = optional(list(string))<br/>    working_directory   = string<br/>    vcs_repo = optional(map(object({<br/>      branch          = optional(string, "main")<br/>      github_app_name = string<br/>    })), null)<br/>  }))</pre> | `{}` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->