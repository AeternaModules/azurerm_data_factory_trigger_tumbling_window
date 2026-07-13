variable "data_factory_trigger_tumbling_windows" {
  description = <<EOT
Map of data_factory_trigger_tumbling_windows, attributes below
Required:
    - data_factory_id
    - frequency
    - interval
    - name
    - start_time
    - pipeline (block):
        - name (required)
        - parameters (optional)
Optional:
    - activated
    - additional_properties
    - annotations
    - delay
    - description
    - end_time
    - max_concurrency
    - retry (block):
        - count (required)
        - interval (optional)
    - trigger_dependency (block):
        - offset (optional)
        - size (optional)
        - trigger_name (optional)
EOT

  type = map(object({
    data_factory_id       = string
    frequency             = string
    interval              = number
    name                  = string
    start_time            = string
    activated             = optional(bool)
    additional_properties = optional(map(string))
    annotations           = optional(list(string))
    delay                 = optional(string)
    description           = optional(string)
    end_time              = optional(string)
    max_concurrency       = optional(number)
    pipeline = object({
      name       = string
      parameters = optional(map(string))
    })
    retry = optional(object({
      count    = number
      interval = optional(number)
    }))
    trigger_dependency = optional(list(object({
      offset       = optional(string)
      size         = optional(string)
      trigger_name = optional(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.data_factory_trigger_tumbling_windows : (
        v.interval >= 1
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_trigger_tumbling_windows : (
        v.annotations == null || (alltrue([for x in v.annotations : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_trigger_tumbling_windows : (
        v.description == null || (length(v.description) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_trigger_tumbling_windows : (
        v.max_concurrency == null || (v.max_concurrency >= 1 && v.max_concurrency <= 50)
      )
    ])
    error_message = "must be between 1 and 50"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_trigger_tumbling_windows : (
        v.retry == null || (v.retry.count >= 1)
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.data_factory_trigger_tumbling_windows : (
        v.retry == null || (v.retry.interval == null || (v.retry.interval >= 0))
      )
    ])
    error_message = "must be at least 0"
  }
  # Note: 13 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

