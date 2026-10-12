output "team_members_id" {
  description = "Map of id values across all team_members, keyed the same as var.team_members except keys with no id are omitted"
  value       = { for k, v in tfe_team_members.team_members : k => v.id if v.id != null && length(v.id) > 0 }
}
output "team_members_team_id" {
  description = "Map of team_id values across all team_members, keyed the same as var.team_members except keys with no team_id are omitted"
  value       = { for k, v in tfe_team_members.team_members : k => v.team_id if v.team_id != null && length(v.team_id) > 0 }
}
output "team_members_usernames" {
  description = "Map of usernames values across all team_members, keyed the same as var.team_members except keys with no usernames are omitted"
  value       = { for k, v in tfe_team_members.team_members : k => v.usernames if v.usernames != null && length(v.usernames) > 0 }
}

