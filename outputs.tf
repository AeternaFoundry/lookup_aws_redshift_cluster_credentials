output "redshift_cluster_credentials_lookup_id" {
  description = "Map of id values across all redshift_cluster_credentials_lookup, keyed the same as var.redshift_cluster_credentials_lookup"
  value       = { for k, v in data.aws_redshift_cluster_credentials.redshift_cluster_credentials_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "redshift_cluster_credentials_lookup_auto_create" {
  description = "Map of auto_create values across all redshift_cluster_credentials_lookup, keyed the same as var.redshift_cluster_credentials_lookup"
  value       = { for k, v in data.aws_redshift_cluster_credentials.redshift_cluster_credentials_lookup : k => v.auto_create if v.auto_create != null }
}
output "redshift_cluster_credentials_lookup_cluster_identifier" {
  description = "Map of cluster_identifier values across all redshift_cluster_credentials_lookup, keyed the same as var.redshift_cluster_credentials_lookup"
  value       = { for k, v in data.aws_redshift_cluster_credentials.redshift_cluster_credentials_lookup : k => v.cluster_identifier if v.cluster_identifier != null && length(v.cluster_identifier) > 0 }
}
output "redshift_cluster_credentials_lookup_db_groups" {
  description = "Map of db_groups values across all redshift_cluster_credentials_lookup, keyed the same as var.redshift_cluster_credentials_lookup"
  value       = { for k, v in data.aws_redshift_cluster_credentials.redshift_cluster_credentials_lookup : k => v.db_groups if v.db_groups != null && length(v.db_groups) > 0 }
}
output "redshift_cluster_credentials_lookup_db_name" {
  description = "Map of db_name values across all redshift_cluster_credentials_lookup, keyed the same as var.redshift_cluster_credentials_lookup"
  value       = { for k, v in data.aws_redshift_cluster_credentials.redshift_cluster_credentials_lookup : k => v.db_name if v.db_name != null && length(v.db_name) > 0 }
}
output "redshift_cluster_credentials_lookup_db_password" {
  description = "Map of db_password values across all redshift_cluster_credentials_lookup, keyed the same as var.redshift_cluster_credentials_lookup"
  value       = { for k, v in data.aws_redshift_cluster_credentials.redshift_cluster_credentials_lookup : k => v.db_password if v.db_password != null && length(v.db_password) > 0 }
  sensitive   = true
}
output "redshift_cluster_credentials_lookup_db_user" {
  description = "Map of db_user values across all redshift_cluster_credentials_lookup, keyed the same as var.redshift_cluster_credentials_lookup"
  value       = { for k, v in data.aws_redshift_cluster_credentials.redshift_cluster_credentials_lookup : k => v.db_user if v.db_user != null && length(v.db_user) > 0 }
}
output "redshift_cluster_credentials_lookup_duration_seconds" {
  description = "Map of duration_seconds values across all redshift_cluster_credentials_lookup, keyed the same as var.redshift_cluster_credentials_lookup"
  value       = { for k, v in data.aws_redshift_cluster_credentials.redshift_cluster_credentials_lookup : k => v.duration_seconds if v.duration_seconds != null }
}
output "redshift_cluster_credentials_lookup_expiration" {
  description = "Map of expiration values across all redshift_cluster_credentials_lookup, keyed the same as var.redshift_cluster_credentials_lookup"
  value       = { for k, v in data.aws_redshift_cluster_credentials.redshift_cluster_credentials_lookup : k => v.expiration if v.expiration != null && length(v.expiration) > 0 }
}
output "redshift_cluster_credentials_lookup_region" {
  description = "Map of region values across all redshift_cluster_credentials_lookup, keyed the same as var.redshift_cluster_credentials_lookup"
  value       = { for k, v in data.aws_redshift_cluster_credentials.redshift_cluster_credentials_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

