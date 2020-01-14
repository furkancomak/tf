resource "github_team" "team_create" {
	name        = var.team_name
	description = "Team Names"
	privacy = "secret"
}

resource "github_team_membership" "this" {
	count    = length(var.users-org)
	team_id  = github_team.team_create.id
	username = lookup(var.users-org[count.index], "username")
	role     = lookup(var.users-org[count.index], "role-team", "member")

	# member or maintainer
}
