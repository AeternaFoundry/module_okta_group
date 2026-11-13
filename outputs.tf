output "groups_id" {
  description = "Map of id values across all groups, keyed the same as var.groups"
  value       = { for k, v in okta_group.groups : k => v.id }
}
output "groups_custom_profile_attributes" {
  description = "Map of custom_profile_attributes values across all groups, keyed the same as var.groups"
  value       = { for k, v in okta_group.groups : k => v.custom_profile_attributes }
}
output "groups_description" {
  description = "Map of description values across all groups, keyed the same as var.groups"
  value       = { for k, v in okta_group.groups : k => v.description }
}
output "groups_name" {
  description = "Map of name values across all groups, keyed the same as var.groups"
  value       = { for k, v in okta_group.groups : k => v.name }
}
output "groups_skip_users" {
  description = "Map of skip_users values across all groups, keyed the same as var.groups"
  value       = { for k, v in okta_group.groups : k => v.skip_users }
}

