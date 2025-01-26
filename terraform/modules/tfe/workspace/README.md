# tfe/workspace

This module creates a workspace and associated resources in HCP Terraform.

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
| [tfe_workspace.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |
| [tfe_workspace_run.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace_run) | resource |
| [tfe_workspace_run_task.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace_run_task) | resource |
| [tfe_workspace_settings.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace_settings) | resource |
| [tfe_workspace_variable_set.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace_variable_set) | resource |
| [tfe_github_app_installation.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/github_app_installation) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_agent_pool_id"></a> [agent\_pool\_id](#input\_agent\_pool\_id) | ID of the agent pool to associate with this workspace. | `string` | `null` | no |
| <a name="input_allow_destroy_plan"></a> [allow\_destroy\_plan](#input\_allow\_destroy\_plan) | Whether destroy plans are allowed for this workspace. | `bool` | `true` | no |
| <a name="input_apply"></a> [apply](#input\_apply) | Settings for apply runs. | <pre>object({<br/>    manual_confirm = optional(bool, false)<br/>    retry          = optional(bool, true)<br/>    retry_attempts = optional(number, 1)<br/>    wait_for_run   = optional(bool, false)<br/>  })</pre> | `{}` | no |
| <a name="input_assessments_enabled"></a> [assessments\_enabled](#input\_assessments\_enabled) | Whether health checks are enabled for this workspace. | `bool` | `false` | no |
| <a name="input_auto_apply"></a> [auto\_apply](#input\_auto\_apply) | Whether runs are automatically applied for this workspace. | `bool` | `false` | no |
| <a name="input_auto_apply_run_trigger"></a> [auto\_apply\_run\_trigger](#input\_auto\_apply\_run\_trigger) | Whether runs are automatically applied when created by outside triggers. | `bool` | `false` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of the workspace. | `string` | n/a | yes |
| <a name="input_destroy"></a> [destroy](#input\_destroy) | Settings for destroy runs. | <pre>object({<br/>    manual_confirm = optional(bool, true)<br/>    retry          = optional(bool, true)<br/>    retry_attempts = optional(number, 1)<br/>    wait_for_run   = optional(bool, false)<br/>  })</pre> | `{}` | no |
| <a name="input_execution_mode"></a> [execution\_mode](#input\_execution\_mode) | Execution mode to use. | `string` | `"remote"` | no |
| <a name="input_file_triggers_enabled"></a> [file\_triggers\_enabled](#input\_file\_triggers\_enabled) | Whether to filter runs based on the changed files in a VCS push. | `bool` | `true` | no |
| <a name="input_force_delete"></a> [force\_delete](#input\_force\_delete) | Whether to allow force deletion or use soft delete. | `bool` | `false` | no |
| <a name="input_global_remote_state"></a> [global\_remote\_state](#input\_global\_remote\_state) | Whether the workspace allows all workspaces in the organization to access its state data during runs. | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the workspace. | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | ID of the project to associate this workspace with. | `string` | n/a | yes |
| <a name="input_queue_all_runs"></a> [queue\_all\_runs](#input\_queue\_all\_runs) | Whether the workspace should start automatically performing runs immediately after its creation. | `bool` | `true` | no |
| <a name="input_remote_state_consumer_ids"></a> [remote\_state\_consumer\_ids](#input\_remote\_state\_consumer\_ids) | Set of workspace IDs set as explicit remote state consumers for the given workspace. | `set(string)` | `[]` | no |
| <a name="input_run_tasks"></a> [run\_tasks](#input\_run\_tasks) | Settings for run tasks to associate with the workspace. | <pre>map(object({<br/>    enforcement_level = optional(string, "advisory")<br/>    stages            = list(string)<br/>  }))</pre> | `{}` | no |
| <a name="input_source_name"></a> [source\_name](#input\_source\_name) | Friendly name for the application or client creating this workspace. | `string` | `"HCP Terraform"` | no |
| <a name="input_source_url"></a> [source\_url](#input\_source\_url) | The URL of the application or client creating this workspace. | `string` | `"https://app.terraform.io"` | no |
| <a name="input_speculative_enabled"></a> [speculative\_enabled](#input\_speculative\_enabled) | Whether speculative plans are enabled for this workspace. | `bool` | `true` | no |
| <a name="input_tag_names"></a> [tag\_names](#input\_tag\_names) | List of tag names to apply. | `list(string)` | `[]` | no |
| <a name="input_terraform_version"></a> [terraform\_version](#input\_terraform\_version) | Version of Terraform to use, either exact or constraint. | `string` | n/a | yes |
| <a name="input_trigger_patterns"></a> [trigger\_patterns](#input\_trigger\_patterns) | List of glob patterns describing files to monitor for changes. | `list(string)` | `null` | no |
| <a name="input_variable_set_ids"></a> [variable\_set\_ids](#input\_variable\_set\_ids) | Set of variable set IDs to associate with the workspace. | `set(string)` | `[]` | no |
| <a name="input_vcs_repo"></a> [vcs\_repo](#input\_vcs\_repo) | Configuration of the VCS repository as identifier => settings map. | <pre>map(object({<br/>    branch          = optional(string, "main")<br/>    github_app_name = optional(string, null)<br/>    oauth_token_id  = optional(string, null)<br/>    tags_regex      = optional(string, null)<br/>  }))</pre> | `null` | no |
| <a name="input_working_directory"></a> [working\_directory](#input\_working\_directory) | A relative path that Terraform will execute within. | `string` | `null` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->