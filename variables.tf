variable "redshift_cluster_credentials_lookup" {
  description = <<EOT
Map of redshift_cluster_credentials_lookup, attributes below
Required:
    - cluster_identifier
    - db_user
Optional:
    - auto_create
    - db_groups
    - db_name
    - duration_seconds
    - region
EOT

  type = map(object({
    cluster_identifier = string
    db_user            = string
    auto_create        = optional(bool)
    db_groups          = optional(set(string))
    db_name            = optional(string)
    duration_seconds   = optional(number)
    region             = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.redshift_cluster_credentials_lookup : (
        v.duration_seconds == null || (v.duration_seconds >= 900 && v.duration_seconds <= 3600)
      )
    ])
    error_message = "must be between 900 and 3600"
  }
}

