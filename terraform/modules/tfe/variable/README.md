# tfe/variable

This module provides a wrapper around different workspace variable types.

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
| [tfe_variable.env](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.hcl](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.plain](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.sensitive](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_env_vars"></a> [env\_vars](#input\_env\_vars) | Environment variables to create as name => value map. | `map(string)` | `{}` | no |
| <a name="input_hcl_vars"></a> [hcl\_vars](#input\_hcl\_vars) | HCL code variables to create as name => value map. | `map(string)` | `{}` | no |
| <a name="input_plain_vars"></a> [plain\_vars](#input\_plain\_vars) | Plaintext variables to create as name => value map. | `map(string)` | `{}` | no |
| <a name="input_sensitive_vars"></a> [sensitive\_vars](#input\_sensitive\_vars) | List of sensitive variables to create with default value of `changeme`. | `set(string)` | `[]` | no |
| <a name="input_variable_set_id"></a> [variable\_set\_id](#input\_variable\_set\_id) | ID of the variable set that owns these variables. | `string` | `null` | no |
| <a name="input_workspace_id"></a> [workspace\_id](#input\_workspace\_id) | ID of the workspace that owns these variables. | `string` | `null` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->