output "groups_id" {
  description = "Map of id values across all groups, keyed the same as var.groups except keys with no id are omitted"
  value       = { for k, v in okta_group.groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "groups_custom_profile_attributes" {
  description = "Map of custom_profile_attributes values across all groups, keyed the same as var.groups except keys with no custom_profile_attributes are omitted"
  value       = { for k, v in okta_group.groups : k => v.custom_profile_attributes if v.custom_profile_attributes != null && length(v.custom_profile_attributes) > 0 }
}
output "groups_description" {
  description = "Map of description values across all groups, keyed the same as var.groups except keys with no description are omitted"
  value       = { for k, v in okta_group.groups : k => v.description if v.description != null && length(v.description) > 0 }
}
output "groups_name" {
  description = "Map of name values across all groups, keyed the same as var.groups except keys with no name are omitted"
  value       = { for k, v in okta_group.groups : k => v.name if v.name != null && length(v.name) > 0 }
}
output "groups_skip_users" {
  description = "Map of skip_users values across all groups, keyed the same as var.groups except keys with no skip_users are omitted"
  value       = { for k, v in okta_group.groups : k => v.skip_users if v.skip_users != null }
}

