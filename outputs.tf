output "apm_retention_filters_id" {
  description = "Map of id values across all apm_retention_filters, keyed the same as var.apm_retention_filters except keys with no id are omitted"
  value       = { for k, v in datadog_apm_retention_filter.apm_retention_filters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apm_retention_filters_enabled" {
  description = "Map of enabled values across all apm_retention_filters, keyed the same as var.apm_retention_filters except keys with no enabled are omitted"
  value       = { for k, v in datadog_apm_retention_filter.apm_retention_filters : k => v.enabled if v.enabled != null }
}
output "apm_retention_filters_filter" {
  description = "Map of filter values across all apm_retention_filters, keyed the same as var.apm_retention_filters except keys with no filter are omitted"
  value       = { for k, v in datadog_apm_retention_filter.apm_retention_filters : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "apm_retention_filters_filter_type" {
  description = "Map of filter_type values across all apm_retention_filters, keyed the same as var.apm_retention_filters except keys with no filter_type are omitted"
  value       = { for k, v in datadog_apm_retention_filter.apm_retention_filters : k => v.filter_type if v.filter_type != null && length(v.filter_type) > 0 }
}
output "apm_retention_filters_name" {
  description = "Map of name values across all apm_retention_filters, keyed the same as var.apm_retention_filters except keys with no name are omitted"
  value       = { for k, v in datadog_apm_retention_filter.apm_retention_filters : k => v.name if v.name != null && length(v.name) > 0 }
}
output "apm_retention_filters_rate" {
  description = "Map of rate values across all apm_retention_filters, keyed the same as var.apm_retention_filters except keys with no rate are omitted"
  value       = { for k, v in datadog_apm_retention_filter.apm_retention_filters : k => v.rate if v.rate != null && length(v.rate) > 0 }
}
output "apm_retention_filters_trace_rate" {
  description = "Map of trace_rate values across all apm_retention_filters, keyed the same as var.apm_retention_filters except keys with no trace_rate are omitted"
  value       = { for k, v in datadog_apm_retention_filter.apm_retention_filters : k => v.trace_rate if v.trace_rate != null && length(v.trace_rate) > 0 }
}

