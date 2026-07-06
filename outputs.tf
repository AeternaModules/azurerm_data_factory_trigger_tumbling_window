output "data_factory_trigger_tumbling_windows" {
  description = "All data_factory_trigger_tumbling_window resources"
  value       = azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows
}
output "data_factory_trigger_tumbling_windows_activated" {
  description = "List of activated values across all data_factory_trigger_tumbling_windows"
  value       = [for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : v.activated]
}
output "data_factory_trigger_tumbling_windows_additional_properties" {
  description = "List of additional_properties values across all data_factory_trigger_tumbling_windows"
  value       = [for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : v.additional_properties]
}
output "data_factory_trigger_tumbling_windows_annotations" {
  description = "List of annotations values across all data_factory_trigger_tumbling_windows"
  value       = [for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : v.annotations]
}
output "data_factory_trigger_tumbling_windows_data_factory_id" {
  description = "List of data_factory_id values across all data_factory_trigger_tumbling_windows"
  value       = [for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : v.data_factory_id]
}
output "data_factory_trigger_tumbling_windows_delay" {
  description = "List of delay values across all data_factory_trigger_tumbling_windows"
  value       = [for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : v.delay]
}
output "data_factory_trigger_tumbling_windows_description" {
  description = "List of description values across all data_factory_trigger_tumbling_windows"
  value       = [for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : v.description]
}
output "data_factory_trigger_tumbling_windows_end_time" {
  description = "List of end_time values across all data_factory_trigger_tumbling_windows"
  value       = [for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : v.end_time]
}
output "data_factory_trigger_tumbling_windows_frequency" {
  description = "List of frequency values across all data_factory_trigger_tumbling_windows"
  value       = [for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : v.frequency]
}
output "data_factory_trigger_tumbling_windows_interval" {
  description = "List of interval values across all data_factory_trigger_tumbling_windows"
  value       = [for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : v.interval]
}
output "data_factory_trigger_tumbling_windows_max_concurrency" {
  description = "List of max_concurrency values across all data_factory_trigger_tumbling_windows"
  value       = [for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : v.max_concurrency]
}
output "data_factory_trigger_tumbling_windows_name" {
  description = "List of name values across all data_factory_trigger_tumbling_windows"
  value       = [for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : v.name]
}
output "data_factory_trigger_tumbling_windows_pipeline" {
  description = "List of pipeline values across all data_factory_trigger_tumbling_windows"
  value       = [for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : v.pipeline]
}
output "data_factory_trigger_tumbling_windows_retry" {
  description = "List of retry values across all data_factory_trigger_tumbling_windows"
  value       = [for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : v.retry]
}
output "data_factory_trigger_tumbling_windows_start_time" {
  description = "List of start_time values across all data_factory_trigger_tumbling_windows"
  value       = [for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : v.start_time]
}
output "data_factory_trigger_tumbling_windows_trigger_dependency" {
  description = "List of trigger_dependency values across all data_factory_trigger_tumbling_windows"
  value       = [for k, v in azurerm_data_factory_trigger_tumbling_window.data_factory_trigger_tumbling_windows : v.trigger_dependency]
}

