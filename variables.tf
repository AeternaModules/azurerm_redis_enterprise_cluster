variable "redis_enterprise_clusters" {
  description = <<EOT
Map of redis_enterprise_clusters, attributes below
Required:
    - location
    - name
    - resource_group_name
    - sku_name
Optional:
    - minimum_tls_version
    - tags
    - zones
EOT

  type = map(object({
    location            = string
    name                = string
    resource_group_name = string
    sku_name            = string
    minimum_tls_version = optional(string)
    tags                = optional(map(string))
    zones               = optional(set(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.redis_enterprise_clusters : (
        length(v.name) >= 3
      )
    ])
    error_message = "[from validate.RedisEnterpriseName: invalid when len(value) < 3]"
  }
  validation {
    condition = alltrue([
      for k, v in var.redis_enterprise_clusters : (
        length(v.name) <= 63
      )
    ])
    error_message = "[from validate.RedisEnterpriseName: invalid when len(value) > 63]"
  }
  validation {
    condition = alltrue([
      for k, v in var.redis_enterprise_clusters : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.redis_enterprise_clusters : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.redis_enterprise_clusters : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.redis_enterprise_clusters : (
        v.zones == null || (alltrue([for x in v.zones : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.redis_enterprise_clusters : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 14 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

