# vsphere/host

This module adds hosts to a vSphere cluster or datacenter.

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
| [vsphere_host.this](https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs/resources/host) | resource |
| [vsphere_host_thumbprint.this](https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs/data-sources/host_thumbprint) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster"></a> [cluster](#input\_cluster) | ID of the cluster the ESXi host should be added to. | `string` | `null` | no |
| <a name="input_connected"></a> [connected](#input\_connected) | Whether the ESXi host should be connected. | `bool` | `true` | no |
| <a name="input_custom_attributes"></a> [custom\_attributes](#input\_custom\_attributes) | Custom attributes as id => value map. | `map(string)` | `{}` | no |
| <a name="input_datacenter"></a> [datacenter](#input\_datacenter) | ID of the datacenter the ESXi host should be added to. | `string` | `null` | no |
| <a name="input_hostname"></a> [hostname](#input\_hostname) | FQDN or IP address of the ESXi host. | `string` | n/a | yes |
| <a name="input_insecure"></a> [insecure](#input\_insecure) | Whether to allow insecure connections to the ESXi host. | `bool` | `false` | no |
| <a name="input_licence"></a> [licence](#input\_licence) | License key to assign to the ESXi host. | `string` | `null` | no |
| <a name="input_lockdown"></a> [lockdown](#input\_lockdown) | Lockdown state of the ESXi host. | `string` | `false` | no |
| <a name="input_maintenance"></a> [maintenance](#input\_maintenance) | Whether the ESXi host should be in maintenance mode. | `bool` | `false` | no |
| <a name="input_password"></a> [password](#input\_password) | Password to authenticate with the ESXi host. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | IDs of tags to attach to the ESXi host. | `list(string)` | n/a | yes |
| <a name="input_username"></a> [username](#input\_username) | Username to authenticate with the ESXi host. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | n/a |
<!-- END_TF_DOCS -->