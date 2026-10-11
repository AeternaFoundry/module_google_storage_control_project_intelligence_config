output "storage_control_project_intelligence_configs_id" {
  description = "Map of id values across all storage_control_project_intelligence_configs, keyed the same as var.storage_control_project_intelligence_configs except keys with no id are omitted"
  value       = { for k, v in google_storage_control_project_intelligence_config.storage_control_project_intelligence_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storage_control_project_intelligence_configs_edition_config" {
  description = "Map of edition_config values across all storage_control_project_intelligence_configs, keyed the same as var.storage_control_project_intelligence_configs except keys with no edition_config are omitted"
  value       = { for k, v in google_storage_control_project_intelligence_config.storage_control_project_intelligence_configs : k => v.edition_config if v.edition_config != null && length(v.edition_config) > 0 }
}
output "storage_control_project_intelligence_configs_effective_intelligence_config" {
  description = "Map of effective_intelligence_config values across all storage_control_project_intelligence_configs, keyed the same as var.storage_control_project_intelligence_configs except keys with no effective_intelligence_config are omitted"
  value       = { for k, v in google_storage_control_project_intelligence_config.storage_control_project_intelligence_configs : k => v.effective_intelligence_config if v.effective_intelligence_config != null && length(v.effective_intelligence_config) > 0 }
}
output "storage_control_project_intelligence_configs_filter" {
  description = "Map of filter values across all storage_control_project_intelligence_configs, keyed the same as var.storage_control_project_intelligence_configs except keys with no filter are omitted"
  value       = { for k, v in google_storage_control_project_intelligence_config.storage_control_project_intelligence_configs : k => one(v.filter) if v.filter != null && length(v.filter) > 0 }
}
output "storage_control_project_intelligence_configs_name" {
  description = "Map of name values across all storage_control_project_intelligence_configs, keyed the same as var.storage_control_project_intelligence_configs except keys with no name are omitted"
  value       = { for k, v in google_storage_control_project_intelligence_config.storage_control_project_intelligence_configs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "storage_control_project_intelligence_configs_trial_config" {
  description = "Map of trial_config values across all storage_control_project_intelligence_configs, keyed the same as var.storage_control_project_intelligence_configs except keys with no trial_config are omitted"
  value       = { for k, v in google_storage_control_project_intelligence_config.storage_control_project_intelligence_configs : k => v.trial_config if v.trial_config != null && length(v.trial_config) > 0 }
}
output "storage_control_project_intelligence_configs_update_time" {
  description = "Map of update_time values across all storage_control_project_intelligence_configs, keyed the same as var.storage_control_project_intelligence_configs except keys with no update_time are omitted"
  value       = { for k, v in google_storage_control_project_intelligence_config.storage_control_project_intelligence_configs : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

