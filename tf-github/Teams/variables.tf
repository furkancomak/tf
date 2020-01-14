variable "team_name" {
	description = "Team ID"
	type = string
}

variable "users-org" {
	description = "All organization members"

	default = [
		{
			username = "user-1"
		},
		{
			username = "user-2"
			role-org = "admin"
		},
		{
			username  = "user-3"
			role-team = "maintainer"
		},
	]
}
