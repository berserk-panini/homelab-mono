variable "name" {
  description = "Name of the compute cluster."
  nullable    = false
  type        = string
}
variable "datacenter_id" {
  description = "ID of the datacenter to create the cluster in."
  nullable    = false
  type        = string
}
variable "custom_attributes" {
  default     = {}
  description = "Custom attributes as id => value map."
  type        = map(string)
}
variable "folder" {
  default     = null
  description = "Folder where the cluster should be created."
  type        = string
}
variable "tags" {
  default     = []
  description = "IDs of tags to attach to the cluster."
  type        = set(string)
}

# host options
variable "host_system_ids" {
  default     = []
  description = "IDs of hosts to add to the cluster."
  type        = set(string)
}
variable "host_managed" {
  default     = false
  description = "Whether the membership should be managed by hosts."
  type        = bool
}

# dpm
variable "dpm_enabled" {
  default     = true
  description = "Whether DPM should be enabled for DRS."
  type        = bool
}
variable "dpm_automation_level" {
  default     = "automated"
  description = "Automation level for host power operations in this cluster."
  type        = string
}
variable "dpm_threshold" {
  default     = 3
  description = "Threshold of load within the cluster."
  type        = number
}

# drs
variable "drs_enabled" {
  default     = true
  description = "Whether DRS should be enabled."
  type        = bool
}
variable "drs_automation_level" {
  default     = "fullyAutomated"
  description = "DRS automation level."
  type        = string
}
variable "drs_migration_threshold" {
  default     = 3
  description = "Threshold of imbalance tolerated between hosts."
  type        = number
}
variable "drs_enable_vm_overrides" {
  default     = true
  description = "Allow individual DRS overrides to be set for virtual machines in the cluster."
  type        = bool
}
variable "drs_enable_predictive_drs" {
  default     = false
  description = "Enable DRS to use data from VMWare Aria Operations for predictive recommendations."
  type        = bool
}

# ha
variable "ha_enabled" {
  default     = false
  description = "Whether HA should be enabled."
  type        = bool
}
variable "ha_host_monitoring" {
  default     = "enabled"
  description = "Whether vSphere HA remediates virtual machines on host failure."
  type        = string
}
variable "ha_vm_restart_priority" {
  default     = "medium"
  description = "Default restart priority for virtual machines when host failure is detected."
  type        = string
}
variable "ha_vm_dependency_restart_condition" {
  default     = "guestHbStatusGreen"
  description = "Condition used to determine whether or not virtual machines in a certain restart priority class are online."
  type        = string
}
variable "ha_host_isolation_response" {
  default     = "none"
  description = "Action taken when a host is isolated from the cluster."
  type        = string
}

# ha vmcp
variable "ha_vm_component_protection" {
  default     = "enabled"
  description = "Controls vSphere VM component protection for virtual machines in this cluster."
  type        = string
}
variable "ha_datastore_pdl_response" {
  default     = "warning"
  description = "Action taken when cluster detected a datastore in a Permanent Device Loss state."
}
variable "ha_datastore_apd_response" {
  default     = "warning"
  description = "Controls the action to take on virtual machines when the cluster has detected loss to all paths to a relevant datastore."
  type        = string
}
variable "ha_datastore_apd_recovery_action" {
  default     = "reset"
  description = "Controls the action to take on virtual machines if an APD status on an affected datastore clears in the middle of an APD event."
  type        = string
}

# ha monitoring
variable "ha_vm_monitoring" {
  default     = "vmAndAppMonitoring"
  description = "Type of virtual machine monitoring to use when HA is enabled in the cluster."
  type        = string
}
variable "ha_vm_failure_interval" {
  default     = 30
  description = "VM is marked as failed if heartbeat is not received within this interval."
  type        = number
}
variable "ha_vm_minimum_uptime" {
  default     = 120
  description = "Minimum uptime for a virtual machine before it is considered for HA monitoring."
  type        = number
}

# ha admission control
variable "ha_admission_control_policy" {
  default     = "resourcePercentage"
  description = "Type of admission control policy to use with vSphere HA."
  type        = string
}
variable "ha_admission_control_host_failure_tolerance" {
  default     = 1
  description = "Number of host failures that can be tolerated when making decisions on whether to permit virtual machine operations."
  type        = number
}
variable "ha_admission_control_performance_tolerance" {
  default     = 100
  description = "Percentage of resource reduction that a cluster of virtual machines can tolerate in case of a failover."
  type        = number
}
