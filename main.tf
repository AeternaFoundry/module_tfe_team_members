resource "tfe_team_members" "team_members" {
  for_each = var.team_members

  team_id   = each.value.team_id
  usernames = each.value.usernames
}

