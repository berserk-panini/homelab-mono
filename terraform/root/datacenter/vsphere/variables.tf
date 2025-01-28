# provider.vsphere
variable "allow_unverified_ssl" {
  description = "Whether to disable SSL certificate verification."
  type        = bool
}
variable "vsphere_user" {
  description = "Username for vSphere API operations."
  type        = string
}
variable "vsphere_password" {
  description = "Password for vSphere API operations."
  ephemeral   = true
  type        = string
}
variable "vsphere_server" {
  description = "vSphere server address."
  type        = string
}

# vsphere_datacenter
variable "datacenter" {
  description = "Datacenter name."
  type        = string
}
variable "folder" {
  default     = null
  description = "Folder where the datacenter should be created."
  type        = string
}
variable "custom_attributes" {
  default     = {}
  description = "Custom attributes as id => value map."
  type        = map(string)
}

# vsphere_host
variable "esxi_username" {
  description = "Username to authenticate with the ESXi host."
  type        = string
}
variable "esxi_password" {
  description = "Password to authenticate with the ESXi host."
  sensitive   = true
  type        = string
}
variable "hosts" {
  default     = {}
  description = "Hosts to create as hostname => settings map."
  type = map(object({
    custom_attributes = map(string)
    insecure          = bool
    license           = string
    lockdown          = bool
    maintenance       = bool
    tags              = list(string)
  }))
}

variable "compute_clusters" {
  description = "Compute clusters to create as name => settings map."
  type = map(object({
    datacenter_id = string
    folder        = optional(string)
    tags          = optional(set(string))
    hosts         = optional(set(string))
    host_managed  = optional(bool, false)
  }))
}
