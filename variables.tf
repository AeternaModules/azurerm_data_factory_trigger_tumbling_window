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
    activated             = optional(bool) # Default: true
    additional_properties = optional(map(string))
    annotations           = optional(list(string))
    delay                 = optional(string)
    description           = optional(string)
    end_time              = optional(string)
    max_concurrency       = optional(number) # Default: 50
    pipeline = object({
      name       = string
      parameters = optional(map(string))
    })
    retry = optional(object({
      count    = number
      interval = optional(number) # Default: 30
    }))
    trigger_dependency = optional(object({
      offset       = optional(string)
      size         = optional(string)
      trigger_name = optional(string)
    }))
  }))
}

