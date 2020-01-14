provider "github" {
	organization = "TerrPrac"
	token = "5ae763202fb23d1a546df257b461a11230e3122f"
}
module "Team-Manage" {
	source = "/Users/furkancomak/Projects/tf-github/Teams"
	team_name = "teamname"
	users-org = [
		{
			username = "user1"
		},
		{
			username = "furkancomak"
			role-team = "member"
		},
	]
}
module "Repository-Builder" {
	source = "/Users/furkancomak/Projects/tf-github/Repository"
	name = "Repo_deneme"
	description = "Bu bir deneme reposudur"
	private = false
	has_issues = true
	has_wiki = false
	allow_merge_commit = false
	allow_squash_merge = true
	allow_rebase_merge = false
	has_downloads = false
	auto_init = true
	branch = "master"
	enable_branch_protection = 1
	// only works after initial creation of repository
	enforce_admins = true
	req_status_checks_strict = false
	req_status_checks_context = [
		"ci/circleci: build"]
	req_pr_reviews_dismiss_stale_reviews = true
	req_pr_reviews_dismiss_user = module.Team-Manage.users
	req_pr_reviews_dismiss_team = module.Team-Manage.team_name
	restrictions_users = [
		"user1"]
	restrictions_teams = [
		"team1"]

	collaborator_team = "team1"
	collaborator_user = "user1"
	collaborator_permission = "pull"
}

