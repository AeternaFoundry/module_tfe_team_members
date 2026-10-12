variable "team_members" {
  description = <<EOT
Map of team_members, attributes below
Required:
    - team_id
    - usernames
EOT

  type = map(object({
    team_id   = string
    usernames = set(string)
  }))
}

