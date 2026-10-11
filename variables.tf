variable "kms_vault_replicas_lookup" {
  description = <<EOT
Map of kms_vault_replicas_lookup, attributes below
Required:
    - vault_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    vault_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

