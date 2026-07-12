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
    trigger_dependency = optional(list(object({
      offset       = optional(string)
      size         = optional(string)
      trigger_name = optional(string)
    })))
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_data_factory_trigger_tumbling_window's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.DataFactoryPipelineAndTriggerName] !regexp.MustCompile(`^[A-Za-z0-9_][^<>*#.%&:\\+?/]*$`).MatchString(value)
  # path: data_factory_id
  #   source:    [from factories.ValidateFactoryID] !ok
  # path: data_factory_id
  #   source:    [from factories.ValidateFactoryID] err != nil
  # path: frequency
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: interval
  #   condition: value >= 1
  #   message:   must be at least 1
  # path: pipeline.name
  #   source:    [from validate.DataFactoryPipelineAndTriggerName] !regexp.MustCompile(`^[A-Za-z0-9_][^<>*#.%&:\\+?/]*$`).MatchString(value)
  # path: start_time
  #   source:    validation.IsRFC3339Time(...) - no translation rule yet, add one
  # path: annotations[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: delay
  #   source:    [from validate.TriggerTimespan] !ok
  # path: delay
  #   source:    [from validate.TriggerTimespan] !regexp.MustCompile(`^\-?((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9]))`).MatchString(value)
  # path: description
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: end_time
  #   source:    validation.IsRFC3339Time(...) - no translation rule yet, add one
  # path: max_concurrency
  #   condition: value >= 1 && value <= 50
  #   message:   must be between 1 and 50
  # path: retry.count
  #   condition: value >= 1
  #   message:   must be at least 1
  # path: retry.interval
  #   condition: value >= 0
  #   message:   must be at least 0
  # path: trigger_dependency.offset
  #   source:    [from validate.TriggerTimespan] !ok
  # path: trigger_dependency.offset
  #   source:    [from validate.TriggerTimespan] !regexp.MustCompile(`^\-?((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9]))`).MatchString(value)
  # path: trigger_dependency.size
  #   source:    [from validate.TriggerTimespan] !ok
  # path: trigger_dependency.size
  #   source:    [from validate.TriggerTimespan] !regexp.MustCompile(`^\-?((\d+)\.)?(\d\d):(60|([0-5][0-9])):(60|([0-5][0-9]))`).MatchString(value)
}

