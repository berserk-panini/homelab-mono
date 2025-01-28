# tfe/variable_set

This module creates a variable set with supplied variables.

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
| <a name="module_variable"></a> [variable](#module\_variable) | ../variable | n/a |

## Resources

| Name | Type |
|------|------|
| [tfe_project_variable_set.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/project_variable_set) | resource |
| [tfe_variable_set.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable_set) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description of the variable set. | `string` | n/a | yes |
| <a name="input_env_vars"></a> [env\_vars](#input\_env\_vars) | Environment variables to create as name => value map. | `map(string)` | `{}` | no |
| <a name="input_global"></a> [global](#input\_global) | Whether the variable set applies to all workspaces. | `bool` | `false` | no |
| <a name="input_hcl_vars"></a> [hcl\_vars](#input\_hcl\_vars) | HCL code variables to create as name => value map. | `map(string)` | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the variable set. | `string` | n/a | yes |
| <a name="input_plain_vars"></a> [plain\_vars](#input\_plain\_vars) | Plaintext variables to create as name => value map. | `map(string)` | `{}` | no |
| <a name="input_priority"></a> [priority](#input\_priority) | Whether the variable can be over-written by more specific scopes. | `bool` | `false` | no |
| <a name="input_project_global"></a> [project\_global](#input\_project\_global) | Whether the variable set applies to all workspaces in the project. | `bool` | `false` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | ID of the project that should own this variable set. | `string` | `null` | no |
| <a name="input_sensitive_vars"></a> [sensitive\_vars](#input\_sensitive\_vars) | List of sensitive variables to create with default value of `changeme`. | `set(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | ID of the variable set. |
<!-- END_TF_DOCS -->