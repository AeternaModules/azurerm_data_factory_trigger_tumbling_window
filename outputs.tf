output "data_factory_trigger_tumbling_windows_activated" {
  description = "Map of activated values across all data_factory_trigger_tumbling_windows, keyed the same as var.data_factory_trigger_tumbling_windows"
  value       = { for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : k => v.activated }
}
output "data_factory_trigger_tumbling_windows_additional_properties" {
  description = "Map of additional_properties values across all data_factory_trigger_tumbling_windows, keyed the same as var.data_factory_trigger_tumbling_windows"
  value       = { for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : k => v.additional_properties }
}
output "data_factory_trigger_tumbling_windows_annotations" {
  description = "Map of annotations values across all data_factory_trigger_tumbling_windows, keyed the same as var.data_factory_trigger_tumbling_windows"
  value       = { for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : k => v.annotations }
}
output "data_factory_trigger_tumbling_windows_data_factory_id" {
  description = "Map of data_factory_id values across all data_factory_trigger_tumbling_windows, keyed the same as var.data_factory_trigger_tumbling_windows"
  value       = { for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : k => v.data_factory_id }
}
output "data_factory_trigger_tumbling_windows_delay" {
  description = "Map of delay values across all data_factory_trigger_tumbling_windows, keyed the same as var.data_factory_trigger_tumbling_windows"
  value       = { for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : k => v.delay }
}
output "data_factory_trigger_tumbling_windows_description" {
  description = "Map of description values across all data_factory_trigger_tumbling_windows, keyed the same as var.data_factory_trigger_tumbling_windows"
  value       = { for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : k => v.description }
}
output "data_factory_trigger_tumbling_windows_end_time" {
  description = "Map of end_time values across all data_factory_trigger_tumbling_windows, keyed the same as var.data_factory_trigger_tumbling_windows"
  value       = { for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : k => v.end_time }
}
output "data_factory_trigger_tumbling_windows_frequency" {
  description = "Map of frequency values across all data_factory_trigger_tumbling_windows, keyed the same as var.data_factory_trigger_tumbling_windows"
  value       = { for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : k => v.frequency }
}
output "data_factory_trigger_tumbling_windows_interval" {
  description = "Map of interval values across all data_factory_trigger_tumbling_windows, keyed the same as var.data_factory_trigger_tumbling_windows"
  value       = { for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : k => v.interval }
}
output "data_factory_trigger_tumbling_windows_max_concurrency" {
  description = "Map of max_concurrency values across all data_factory_trigger_tumbling_windows, keyed the same as var.data_factory_trigger_tumbling_windows"
  value       = { for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : k => v.max_concurrency }
}
output "data_factory_trigger_tumbling_windows_name" {
  description = "Map of name values across all data_factory_trigger_tumbling_windows, keyed the same as var.data_factory_trigger_tumbling_windows"
  value       = { for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : k => v.name }
}
output "data_factory_trigger_tumbling_windows_pipeline" {
  description = "Map of pipeline values across all data_factory_trigger_tumbling_windows, keyed the same as var.data_factory_trigger_tumbling_windows"
  value       = { for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : k => v.pipeline }
}
output "data_factory_trigger_tumbling_windows_retry" {
  description = "Map of retry values across all data_factory_trigger_tumbling_windows, keyed the same as var.data_factory_trigger_tumbling_windows"
  value       = { for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : k => v.retry }
}
output "data_factory_trigger_tumbling_windows_start_time" {
  description = "Map of start_time values across all data_factory_trigger_tumbling_windows, keyed the same as var.data_factory_trigger_tumbling_windows"
  value       = { for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : k => v.start_time }
}
output "data_factory_trigger_tumbling_windows_trigger_dependency" {
  description = "Map of trigger_dependency values across all data_factory_trigger_tumbling_windows, keyed the same as var.data_factory_trigger_tumbling_windows"
  value       = { for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : k => v.trigger_dependency }
}

