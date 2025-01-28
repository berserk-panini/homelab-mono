# vsphere_host_thumbprint
variable "insecure" {
  default     = false
  description = "Whether to allow insecure connections to the ESXi host."
  type        = bool
}

# vsphere_host
variable "hostname" {
  nullable    = false
  description = "FQDN or IP address of the ESXi host."
  type        = string
}
variable "username" {
  nullable    = false
  description = "Username to authenticate with the ESXi host."
  type        = string
}
variable "password" {
  nullable    = false
  description = "Password to authenticate with the ESXi host."
  sensitive   = true
  type        = string
}
variable "cluster" {
  default     = null
  description = "ID of the cluster the ESXi host should be added to."
  type        = string
}
variable "connected" {
  default     = true
  description = "Whether the ESXi host should be connected."
  type        = bool
}
variable "custom_attributes" {
  default     = {}
  description = "Custom attributes as id => value map."
  type        = map(string)
}
variable "datacenter" {
  default     = null
  description = "ID of the datacenter the ESXi host should be added to."
  type        = string
}
variable "licence" {
  default     = null
  description = "License key to assign to the ESXi host."
  sensitive   = true
  type        = string
}
variable "lockdown" {
  default     = false
  description = "Lockdown state of the ESXi host."
  type        = string
}
variable "maintenance" {
  default     = false
  description = "Whether the ESXi host should be in maintenance mode."
  type        = bool
}
variable "tags" {
  description = "IDs of tags to attach to the ESXi host."
  type        = list(string)
}