variable "apm_retention_filters" {
  description = <<EOT
Map of apm_retention_filters, attributes below
Required:
    - enabled
    - filter_type
    - name
    - rate
Optional:
    - trace_rate
    - filter (block):
        - query (optional)
EOT

  type = map(object({
    enabled     = bool
    filter_type = string
    name        = string
    rate        = string
    trace_rate  = optional(string)
    filter = optional(list(object({
      query = optional(string)
    })))
  }))
}

