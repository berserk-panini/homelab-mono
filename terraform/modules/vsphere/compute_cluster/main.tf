resource "vsphere_compute_cluster" "this" {
  name              = var.name
  datacenter_id     = var.datacenter_id
  custom_attributes = var.custom_attributes
  folder            = var.folder
  tags              = var.tags

  host_system_ids = var.host_system_ids
  host_managed    = var.host_managed

  dpm_enabled          = var.dpm_enabled
  dpm_automation_level = var.dpm_automation_level
  dpm_threshold        = var.dpm_threshold

  drs_enabled               = var.drs_enabled
  drs_automation_level      = var.drs_automation_level
  drs_migration_threshold   = var.drs_migration_threshold
  drs_enable_vm_overrides   = var.drs_enable_vm_overrides
  drs_enable_predictive_drs = var.drs_enable_predictive_drs

  ha_enabled                         = var.ha_enabled
  ha_host_monitoring                 = var.ha_host_monitoring
  ha_vm_restart_priority             = var.ha_vm_restart_priority
  ha_vm_dependency_restart_condition = var.ha_vm_dependency_restart_condition
  ha_host_isolation_response         = var.ha_host_isolation_response

  ha_vm_component_protection       = var.ha_vm_component_protection
  ha_datastore_pdl_response        = var.ha_datastore_pdl_response
  ha_datastore_apd_response        = var.ha_datastore_apd_response
  ha_datastore_apd_recovery_action = var.ha_datastore_apd_recovery_action

  ha_vm_monitoring       = var.ha_vm_monitoring
  ha_vm_failure_interval = var.ha_vm_failure_interval
  ha_vm_minimum_uptime   = var.ha_vm_minimum_uptime

  ha_admission_control_policy                 = var.ha_admission_control_policy
  ha_admission_control_host_failure_tolerance = var.ha_admission_control_host_failure_tolerance
  ha_admission_control_performance_tolerance  = var.ha_admission_control_performance_tolerance
}