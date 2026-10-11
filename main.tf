data "aws_redshift_cluster_credentials" "redshift_cluster_credentials_lookup" {
  for_each = var.redshift_cluster_credentials_lookup

  cluster_identifier = each.value.cluster_identifier
  db_user            = each.value.db_user
  auto_create        = each.value.auto_create
  db_groups          = each.value.db_groups
  db_name            = each.value.db_name
  duration_seconds   = each.value.duration_seconds
  region             = each.value.region
}

