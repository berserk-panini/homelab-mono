# datacenter/vsphere

Implements a root module for managing vSphere datacenters.  
This module is intended to be used as a HCP workspace managing a single datacenter in a vCenter Server appliance.

## 📚🚀 Getting Started on VMware vSphere

1. Install VMWare ESXi hypervisor on your server(s) (see [guide](https://techdocs.broadcom.com/us/en/vmware-cis/vsphere/vsphere/8-0/esxi-installation-and-setup-8-0/installing-and-setting-up-esxi-install.html)).
2. Install vCenter Server appliance on an ESXi host (see [guide](https://techdocs.broadcom.com/us/en/vmware-cis/vsphere/vsphere/8-0/vcenter-server-installation-and-setup-8-0.html)).
3. Create a `terraform` administrative user (see [guide](https://techdocs.broadcom.com/us/en/vmware-cis/vsphere/vsphere/8-0/add-vcenter-single-sign-on-users.html)).
4. Save the credentials in the generated variable set (e.g. `vsphere-hl01`).
5. 

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

| Name | Source | Version |
|------|--------|---------|
| <a name="module_compute_cluster"></a> [compute\_cluster](#module\_compute\_cluster) | ../../../modules/vsphere/compute_cluster | n/a |
| <a name="module_host"></a> [host](#module\_host) | ../../../modules/vsphere/host | n/a |

## Resources

| Name | Type |
|------|------|
| [vsphere_datacenter.this](https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs/resources/datacenter) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_unverified_ssl"></a> [allow\_unverified\_ssl](#input\_allow\_unverified\_ssl) | Whether to disable SSL certificate verification. | `bool` | n/a | yes |
| <a name="input_compute_clusters"></a> [compute\_clusters](#input\_compute\_clusters) | Compute clusters to create as name => settings map. | <pre>map(object({<br/>    datacenter_id = string<br/>    folder        = optional(string)<br/>    tags          = optional(set(string))<br/>    hosts         = optional(set(string))<br/>    host_managed  = optional(bool, false)<br/>  }))</pre> | n/a | yes |
| <a name="input_custom_attributes"></a> [custom\_attributes](#input\_custom\_attributes) | Custom attributes as id => value map. | `map(string)` | `{}` | no |
| <a name="input_datacenter"></a> [datacenter](#input\_datacenter) | Datacenter name. | `string` | n/a | yes |
| <a name="input_esxi_password"></a> [esxi\_password](#input\_esxi\_password) | Password to authenticate with the ESXi host. | `string` | n/a | yes |
| <a name="input_esxi_username"></a> [esxi\_username](#input\_esxi\_username) | Username to authenticate with the ESXi host. | `string` | n/a | yes |
| <a name="input_folder"></a> [folder](#input\_folder) | Folder where the datacenter should be created. | `string` | `null` | no |
| <a name="input_hosts"></a> [hosts](#input\_hosts) | Hosts to create as hostname => settings map. | <pre>map(object({<br/>    custom_attributes = map(string)<br/>    insecure          = bool<br/>    license           = string<br/>    lockdown          = bool<br/>    maintenance       = bool<br/>    tags              = list(string)<br/>  }))</pre> | `{}` | no |
| <a name="input_vsphere_password"></a> [vsphere\_password](#input\_vsphere\_password) | Password for vSphere API operations. | `string` | n/a | yes |
| <a name="input_vsphere_server"></a> [vsphere\_server](#input\_vsphere\_server) | vSphere server address. | `string` | n/a | yes |
| <a name="input_vsphere_user"></a> [vsphere\_user](#input\_vsphere\_user) | Username for vSphere API operations. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->