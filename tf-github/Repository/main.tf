resource "github_repository" "repository" {
	name = var.name
	description = var.description
	private = var.private
	has_issues = var.has_issues
	has_wiki = var.has_wiki
	allow_merge_commit = var.allow_merge_commit
	allow_squash_merge = var.allow_squash_merge
	allow_rebase_merge = var.allow_rebase_merge
	has_downloads = var.has_downloads
	auto_init = var.auto_init
}

resource "github_branch_protection" "protected-branch" {
	count = var.enable_branch_protection
	repository = var.name
	branch = var.branch
	enforce_admins = var.enforce_admins

	required_status_checks {
		strict = var.req_status_checks_strict
		contexts = var.req_status_checks_context
	}

	required_pull_request_reviews {
		dismiss_stale_reviews = var.req_pr_reviews_dismiss_stale_reviews
		dismissal_users = var.req_pr_reviews_dismiss_user
		dismissal_teams = var.req_pr_reviews_dismiss_team
	}
}
resource "github_repository_collaborator" "collaborator" {
	repository = github_repository.repository.name
	username = var.collaborator_user || var.collaborator_team
	permission = var.collaborator_permission
}
