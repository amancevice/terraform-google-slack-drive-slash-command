/**
 * Required Variables
 */
variable "bucket_name" {
  description = "Cloud Storage bucket for storing Cloud Function code archives."
}

variable "channel" {
  description = "Slack channel ID for logging messages."
}

variable "client_secret" {
  description = "Google Cloud client secret JSON."
}

variable "project" {
  description = "The ID of the project to apply any resources to."
}

variable "redirect_url" {
  description = "Cloud Function URL for redirecting to Google Drive from Slack."
}

variable "verification_token" {
  description = "Slack verification token."
}

variable "web_api_token" {
  description = "Slack Web API token."
}

/**
 * Optional Variables
 */
variable "bucket_prefix" {
  description = "Prefix for Cloud Storage bucket."
  default     = ""
}

variable "color" {
  description = "Default color for slackbot message attachments."
  default     = "good"
}

variable "function_name" {
  description = "Cloud Function for publishing events from Slack to Pub/Sub."
  default     = "slack-drive-slash-command"
}

variable "memory" {
  description = "Memory for Slack event listener."
  default     = 512
}

variable "slash_command" {
  description = "Name of slash command in Slack"
  default     = "drive"
}

variable "timeout" {
  description = "Timeout in seconds for Slack event listener."
  default     = 10
}

variable "users" {
  description = "Users to include/exclude"
  type        = "map"

  default {
    included = []
    excluded = [
      "USLACKBOT"
    ]
  }
}
