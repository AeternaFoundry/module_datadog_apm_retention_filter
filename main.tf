resource "datadog_apm_retention_filter" "apm_retention_filters" {
  for_each = var.apm_retention_filters

  enabled     = each.value.enabled
  filter_type = each.value.filter_type
  name        = each.value.name
  rate        = each.value.rate
  trace_rate  = each.value.trace_rate

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      query = filter.value.query
    }
  }
}

