output "team_name" {
  value = github_team.team_create.*.name
}

output "users" {
  value = github_team_membership.this.*.username
}

output "roles" {
  value = github_team_membership.this.*.role
}
