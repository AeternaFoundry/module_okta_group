resource "okta_group" "groups" {
  for_each = var.groups

  name                      = each.value.name
  custom_profile_attributes = each.value.custom_profile_attributes
  description               = each.value.description
  skip_users                = each.value.skip_users
}

