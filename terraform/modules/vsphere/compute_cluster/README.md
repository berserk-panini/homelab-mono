# vsphere/compute_cluster

This module manages a compute cluster in a vSphere datacenter.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_vsphere"></a> [vsphere](#requirement\_vsphere) | ~>2.11.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vsphere"></a> [vsphere](#provider\_vsphere) | ~>2.11.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vsphere_compute_cluster.this](https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs/resources/compute_cluster) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_custom_attributes"></a> [custom\_attributes](#input\_custom\_attributes) | Custom attributes as id => value map. | `map(string)` | `{}` | no |
| <a name="input_datacenter_id"></a> [datacenter\_id](#input\_datacenter\_id) | ID of the datacenter to create the cluster in. | `string` | n/a | yes |
| <a name="input_dpm_automation_level"></a> [dpm\_automation\_level](#input\_dpm\_automation\_level) | Automation level for host power operations in this cluster. | `string` | `"automated"` | no |
| <a name="input_dpm_enabled"></a> [dpm\_enabled](#input\_dpm\_enabled) | Whether DPM should be enabled for DRS. | `bool` | `true` | no |
| <a name="input_dpm_threshold"></a> [dpm\_threshold](#input\_dpm\_threshold) | Threshold of load within the cluster. | `number` | `3` | no |
| <a name="input_drs_automation_level"></a> [drs\_automation\_level](#input\_drs\_automation\_level) | DRS automation level. | `string` | `"fullyAutomated"` | no |
| <a name="input_drs_enable_predictive_drs"></a> [drs\_enable\_predictive\_drs](#input\_drs\_enable\_predictive\_drs) | Enable DRS to use data from VMWare Aria Operations for predictive recommendations. | `bool` | `false` | no |
| <a name="input_drs_enable_vm_overrides"></a> [drs\_enable\_vm\_overrides](#input\_drs\_enable\_vm\_overrides) | Allow individual DRS overrides to be set for virtual machines in the cluster. | `bool` | `true` | no |
| <a name="input_drs_enabled"></a> [drs\_enabled](#input\_drs\_enabled) | Whether DRS should be enabled. | `bool` | `true` | no |
| <a name="input_drs_migration_threshold"></a> [drs\_migration\_threshold](#input\_drs\_migration\_threshold) | Threshold of imbalance tolerated between hosts. | `number` | `3` | no |
| <a name="input_folder"></a> [folder](#input\_folder) | Folder where the cluster should be created. | `string` | `null` | no |
| <a name="input_ha_admission_control_host_failure_tolerance"></a> [ha\_admission\_control\_host\_failure\_tolerance](#input\_ha\_admission\_control\_host\_failure\_tolerance) | Number of host failures that can be tolerated when making decisions on whether to permit virtual machine operations. | `number` | `1` | no |
| <a name="input_ha_admission_control_performance_tolerance"></a> [ha\_admission\_control\_performance\_tolerance](#input\_ha\_admission\_control\_performance\_tolerance) | Percentage of resource reduction that a cluster of virtual machines can tolerate in case of a failover. | `number` | `100` | no |
| <a name="input_ha_admission_control_policy"></a> [ha\_admission\_control\_policy](#input\_ha\_admission\_control\_policy) | Type of admission control policy to use with vSphere HA. | `string` | `"resourcePercentage"` | no |
| <a name="input_ha_datastore_apd_recovery_action"></a> [ha\_datastore\_apd\_recovery\_action](#input\_ha\_datastore\_apd\_recovery\_action) | Controls the action to take on virtual machines if an APD status on an affected datastore clears in the middle of an APD event. | `string` | `"reset"` | no |
| <a name="input_ha_datastore_apd_response"></a> [ha\_datastore\_apd\_response](#input\_ha\_datastore\_apd\_response) | Controls the action to take on virtual machines when the cluster has detected loss to all paths to a relevant datastore. | `string` | `"warning"` | no |
| <a name="input_ha_datastore_pdl_response"></a> [ha\_datastore\_pdl\_response](#input\_ha\_datastore\_pdl\_response) | Action taken when cluster detected a datastore in a Permanent Device Loss state. | `string` | `"warning"` | no |
| <a name="input_ha_enabled"></a> [ha\_enabled](#input\_ha\_enabled) | Whether HA should be enabled. | `bool` | `false` | no |
| <a name="input_ha_host_isolation_response"></a> [ha\_host\_isolation\_response](#input\_ha\_host\_isolation\_response) | Action taken when a host is isolated from the cluster. | `string` | `"none"` | no |
| <a name="input_ha_host_monitoring"></a> [ha\_host\_monitoring](#input\_ha\_host\_monitoring) | Whether vSphere HA remediates virtual machines on host failure. | `string` | `"enabled"` | no |
| <a name="input_ha_vm_component_protection"></a> [ha\_vm\_component\_protection](#input\_ha\_vm\_component\_protection) | Controls vSphere VM component protection for virtual machines in this cluster. | `string` | `"enabled"` | no |
| <a name="input_ha_vm_dependency_restart_condition"></a> [ha\_vm\_dependency\_restart\_condition](#input\_ha\_vm\_dependency\_restart\_condition) | Condition used to determine whether or not virtual machines in a certain restart priority class are online. | `string` | `"guestHbStatusGreen"` | no |
| <a name="input_ha_vm_failure_interval"></a> [ha\_vm\_failure\_interval](#input\_ha\_vm\_failure\_interval) | VM is marked as failed if heartbeat is not received within this interval. | `number` | `30` | no |
| <a name="input_ha_vm_minimum_uptime"></a> [ha\_vm\_minimum\_uptime](#input\_ha\_vm\_minimum\_uptime) | Minimum uptime for a virtual machine before it is considered for HA monitoring. | `number` | `120` | no |
| <a name="input_ha_vm_monitoring"></a> [ha\_vm\_monitoring](#input\_ha\_vm\_monitoring) | Type of virtual machine monitoring to use when HA is enabled in the cluster. | `string` | `"vmAndAppMonitoring"` | no |
| <a name="input_ha_vm_restart_priority"></a> [ha\_vm\_restart\_priority](#input\_ha\_vm\_restart\_priority) | Default restart priority for virtual machines when host failure is detected. | `string` | `"medium"` | no |
| <a name="input_host_managed"></a> [host\_managed](#input\_host\_managed) | Whether the membership should be managed by hosts. | `bool` | `false` | no |
| <a name="input_host_system_ids"></a> [host\_system\_ids](#input\_host\_system\_ids) | IDs of hosts to add to the cluster. | `set(string)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the compute cluster. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | IDs of tags to attach to the cluster. | `set(string)` | `[]` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->