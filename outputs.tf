output "kms_vault_replicas_lookup_id" {
  description = "Map of id values across all kms_vault_replicas_lookup, keyed the same as var.kms_vault_replicas_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_kms_vault_replicas.kms_vault_replicas_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kms_vault_replicas_lookup_filter" {
  description = "Map of filter values across all kms_vault_replicas_lookup, keyed the same as var.kms_vault_replicas_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_kms_vault_replicas.kms_vault_replicas_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "kms_vault_replicas_lookup_vault_id" {
  description = "Map of vault_id values across all kms_vault_replicas_lookup, keyed the same as var.kms_vault_replicas_lookup except keys with no vault_id are omitted"
  value       = { for k, v in data.oci_kms_vault_replicas.kms_vault_replicas_lookup : k => v.vault_id if v.vault_id != null && length(v.vault_id) > 0 }
}
output "kms_vault_replicas_lookup_vault_replicas" {
  description = "Map of vault_replicas values across all kms_vault_replicas_lookup, keyed the same as var.kms_vault_replicas_lookup except keys with no vault_replicas are omitted"
  value       = { for k, v in data.oci_kms_vault_replicas.kms_vault_replicas_lookup : k => v.vault_replicas if v.vault_replicas != null && length(v.vault_replicas) > 0 }
}

