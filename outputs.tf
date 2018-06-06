output "version" {
  description = "Slack Drive slash command module version"
  value       = "${local.version}"
}

output "slash_command_url" {
  description = "Endpoint for slash commands to configure in Slack."
  value       = "${google_cloudfunctions_function.function.https_trigger_url}"
}
