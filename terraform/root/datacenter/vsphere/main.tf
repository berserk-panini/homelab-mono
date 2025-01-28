resource "vsphere_datacenter" "this" {
  name              = var.datacenter
  custom_attributes = var.custom_attributes
  folder            = var.folder
}

module "host" {
  for_each = var.hosts
  source   = "../../../modules/vsphere/host"

  hostname          = each.key
  username          = var.esxi_username
  password          = var.esxi_password
  custom_attributes = each.value.custom_attributes
  insecure          = each.value.insecure
  lockdown          = each.value.lockdown
  maintenance       = each.value.maintenance
  tags              = each.value.tags
}

module "compute_cluster" {
  for_each = var.compute_clusters
  source   = "../../../modules/vsphere/compute_cluster"

  name            = each.key
  datacenter_id   = each.value.datacenter_id
  folder          = each.value.folder
  tags            = each.value.tags
  host_system_ids = [for v in each.value.hosts : module.host[v].id]
  host_managed    = each.value.host_managed
}