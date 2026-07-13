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
  # --- Unconfirmed validation candidates, derived from azurerm_redis_enterprise_cluster's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.RedisEnterpriseName] !ok
  # path: name
  #   condition: length(value) >= 3
  #   message:   [from validate.RedisEnterpriseName: invalid when len(value) < 3]
  #   source:    [from validate.RedisEnterpriseName: invalid when len(value) < 3]
  # path: name
  #   condition: length(value) <= 63
  #   message:   [from validate.RedisEnterpriseName: invalid when len(value) > 63]
  #   source:    [from validate.RedisEnterpriseName: invalid when len(value) > 63]
  # path: name
  #   source:    [from validate.RedisEnterpriseName] strings.Contains(v, "--")
  # path: name
  #   source:    [from validate.RedisEnterpriseName] !regexp.MustCompile(`^[A-Za-z0-9][A-Za-z0-9-]+[A-Za-z0-9]$`).MatchString(v)
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: sku_name
  #   source:    [from validate.RedisEnterpriseClusterSkuName] !ok
  # path: sku_name
  #   condition: length(value) <= 1
  #   message:   [from validate.RedisEnterpriseClusterSkuName: invalid when len(value) > 1]
  #   source:    [from validate.RedisEnterpriseClusterSkuName: invalid when len(value) > 1]
  # path: sku_name
  #   source:    [from validate.RedisEnterpriseClusterSkuName] err != nil
  # path: sku_name
  #   source:    [from validate.RedisEnterpriseClusterSkuName] !validSku
  # path: sku_name
  #   source:    [from validate.RedisEnterpriseClusterSkuName] !validCapacity
  # path: zones[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: minimum_tls_version
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

