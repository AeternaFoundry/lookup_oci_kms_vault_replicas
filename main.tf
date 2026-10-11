data "oci_kms_vault_replicas" "kms_vault_replicas_lookup" {
  for_each = var.kms_vault_replicas_lookup

  vault_id = each.value.vault_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

