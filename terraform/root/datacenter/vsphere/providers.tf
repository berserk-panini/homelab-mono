provider "vsphere" {
  allow_unverified_ssl = var.allow_unverified_ssl
  user                 = var.vsphere_user
  password             = var.vsphere_password
  vsphere_server       = var.vsphere_server
}
