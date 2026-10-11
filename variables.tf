variable "groups" {
  description = <<EOT
Map of groups, attributes below
Required:
    - name
Optional:
    - custom_profile_attributes
    - description
    - skip_users
EOT

  type = map(object({
    name                      = string
    custom_profile_attributes = optional(string)
    description               = optional(string)
    skip_users                = optional(bool)
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

