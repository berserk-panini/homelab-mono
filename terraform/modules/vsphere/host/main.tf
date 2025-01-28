data "vsphere_host_thumbprint" "this" {
  address  = var.hostname
  insecure = var.insecure
}

resource "vsphere_host" "this" {
  hostname          = var.hostname
  username          = var.username
  password          = var.password
  cluster           = var.cluster
  connected         = var.connected
  custom_attributes = var.custom_attributes
  datacenter        = var.datacenter
  license           = var.licence
  lockdown          = var.lockdown
  maintenance       = var.maintenance
  tags              = var.tags
  thumbprint        = data.vsphere_host_thumbprint.this.id
}

