variable "name" {
  type        = string
  description = "The name of the repository"
  default     = ""
}

variable "description" {
  type        = string
  description = "A description of the repository"
  default     = ""
}

variable "private" {
  description = "Set to `true` to create a private repository"
  default     = true
}

variable "has_issues" {
  description = "Set to `true` to enable the Github Issues features on the repository"
  default     = true
}

variable "has_wiki" {
  description = "Set to `true` to enable the Github Wiki features on the repository"
  default     = true
}

variable "allow_merge_commit" {
  description = "Set to `false` to disable merge commits on the repository"
  default     = true
}

variable "allow_squash_merge" {
  description = "Set to `false` to disable squash merges on the repository"
  default     = true
}

variable "allow_rebase_merge" {
  description = "Set to `false` to disable rebase merges on the repository"
  default     = true
}

variable "has_downloads" {
  description = "Set to `true` to enable the (deprecated) downloads features on the repository"
  default     = false
}

variable "auto_init" {
  description = "Set to `true` to produce an initial commit in the repository"
  default     = true
}

variable "branch" {
  type        = string
  description = "The name of the default branch of the repository"
  default     = "master"
}

variable "enable_branch_protection" {
  type        = string
  description = "Boolean to toggle branch protection settings. Only works when repository has been created"
  default     = 0
}

variable "enforce_admins" {
  description = "Boolean to toggle enforcement of status checks for administrators"
  default     = true
}

variable "req_status_checks_strict" {
  type = string
  description = "Boolean to toggle strictness of status checks"
  default     = false
}

variable "req_status_checks_context" {
  type        = list(string)
  description = "List of status checks to require in order to merge into this branch"
  default     = []
}

variable "req_pr_reviews_dismiss_stale_reviews" {
  description = "Boolean to toggle dismissal of reviews when a new commit is pushed"
  default     = true
}

variable "req_pr_reviews_dismiss_user" {
  description = "Dismissal of reviews when a new commit is pushed"
  type = list(string)
}
variable "req_pr_reviews_dismiss_team" {
  description = "Dismissal of reviews when a new commit is pushed"
  type = list(string)
}


variable "restrictions_users" {
  description = "The list of user logins with push access"
  default     = []
}

variable "restrictions_teams" {
  description = "The list of team slugs with push access"
  default     = []
}
variable "collaborator_permission" {
	description = "Define the permissions of collaborator"
}
variable "collaborator_user" {
	description = "Define the permissions of collaborator"
}
variable "collaborator_team" {
	description = "Define the permissions of collaborator"
}
