output "data_factory_trigger_tumbling_windows_id" {
  description = "Map of id values across all data_factory_trigger_tumbling_windows, keyed the same as var.data_factory_trigger_tumbling_windows"
  value       = { for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_factory_trigger_tumbling_windows_activated" {
  description = "Map of activated values across all data_factory_trigger_tumbling_windows, keyed the same as var.data_factory_trigger_tumbling_windows"
  value       = { for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : k => v.activated if v.activated != null }
}
output "data_factory_trigger_tumbling_windows_additional_properties" {
  description = "Map of additional_properties values across all data_factory_trigger_tumbling_windows, keyed the same as var.data_factory_trigger_tumbling_windows"
  value       = { for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : k => v.additional_properties if v.additional_properties != null && length(v.additional_properties) > 0 }
}
output "data_factory_trigger_tumbling_windows_annotations" {
  description = "Map of annotations values across all data_factory_trigger_tumbling_windows, keyed the same as var.data_factory_trigger_tumbling_windows"
  value       = { for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : k => v.annotations if v.annotations != null && length(v.annotations) > 0 }
}
output "data_factory_trigger_tumbling_windows_data_factory_id" {
  description = "Map of data_factory_id values across all data_factory_trigger_tumbling_windows, keyed the same as var.data_factory_trigger_tumbling_windows"
  value       = { for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : k => v.data_factory_id if v.data_factory_id != null && length(v.data_factory_id) > 0 }
}
output "data_factory_trigger_tumbling_windows_delay" {
  description = "Map of delay values across all data_factory_trigger_tumbling_windows, keyed the same as var.data_factory_trigger_tumbling_windows"
  value       = { for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : k => v.delay if v.delay != null && length(v.delay) > 0 }
}
output "data_factory_trigger_tumbling_windows_description" {
  description = "Map of description values across all data_factory_trigger_tumbling_windows, keyed the same as var.data_factory_trigger_tumbling_windows"
  value       = { for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : k => v.description if v.description != null && length(v.description) > 0 }
}
output "data_factory_trigger_tumbling_windows_end_time" {
  description = "Map of end_time values across all data_factory_trigger_tumbling_windows, keyed the same as var.data_factory_trigger_tumbling_windows"
  value       = { for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : k => v.end_time if v.end_time != null && length(v.end_time) > 0 }
}
output "data_factory_trigger_tumbling_windows_frequency" {
  description = "Map of frequency values across all data_factory_trigger_tumbling_windows, keyed the same as var.data_factory_trigger_tumbling_windows"
  value       = { for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : k => v.frequency if v.frequency != null && length(v.frequency) > 0 }
}
output "data_factory_trigger_tumbling_windows_interval" {
  description = "Map of interval values across all data_factory_trigger_tumbling_windows, keyed the same as var.data_factory_trigger_tumbling_windows"
  value       = { for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : k => v.interval if v.interval != null }
}
output "data_factory_trigger_tumbling_windows_max_concurrency" {
  description = "Map of max_concurrency values across all data_factory_trigger_tumbling_windows, keyed the same as var.data_factory_trigger_tumbling_windows"
  value       = { for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : k => v.max_concurrency if v.max_concurrency != null }
}
output "data_factory_trigger_tumbling_windows_name" {
  description = "Map of name values across all data_factory_trigger_tumbling_windows, keyed the same as var.data_factory_trigger_tumbling_windows"
  value       = { for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : k => v.name if v.name != null && length(v.name) > 0 }
}
output "data_factory_trigger_tumbling_windows_pipeline" {
  description = "Map of pipeline values across all data_factory_trigger_tumbling_windows, keyed the same as var.data_factory_trigger_tumbling_windows"
  value       = { for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : k => v.pipeline if v.pipeline != null && length(v.pipeline) > 0 }
}
output "data_factory_trigger_tumbling_windows_retry" {
  description = "Map of retry values across all data_factory_trigger_tumbling_windows, keyed the same as var.data_factory_trigger_tumbling_windows"
  value       = { for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : k => v.retry if v.retry != null && length(v.retry) > 0 }
}
output "data_factory_trigger_tumbling_windows_start_time" {
  description = "Map of start_time values across all data_factory_trigger_tumbling_windows, keyed the same as var.data_factory_trigger_tumbling_windows"
  value       = { for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : k => v.start_time if v.start_time != null && length(v.start_time) > 0 }
}
output "data_factory_trigger_tumbling_windows_trigger_dependency" {
  description = "Map of trigger_dependency values across all data_factory_trigger_tumbling_windows, keyed the same as var.data_factory_trigger_tumbling_windows"
  value       = { for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : k => v.trigger_dependency if v.trigger_dependency != null && length(v.trigger_dependency) > 0 }
}

