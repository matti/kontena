require_relative 'grids/list_command'
require_relative 'grids/create_command'
require_relative 'grids/use_command'
require_relative 'grids/show_command'
require_relative 'grids/logs_command'
require_relative 'grids/remove_command'
require_relative 'grids/current_command'
require_relative 'grids/env_command'
require_relative 'grids/audit_log_command'
require_relative 'grids/list_users_command'
require_relative 'grids/add_user_command'
require_relative 'grids/remove_user_command'
require_relative 'grids/add_custom_peer_command'
require_relative 'grids/remove_custom_peer_command'

class Kontena::Cli::GridCommand < Clamp::Command

  subcommand "list", "List all grids", Kontena::Cli::Grids::ListCommand
  subcommand "create", "Create a new grid", Kontena::Cli::Grids::CreateCommand
  subcommand "use", "Switch to use specific grid", Kontena::Cli::Grids::UseCommand
  subcommand "show", "Show grid details", Kontena::Cli::Grids::ShowCommand
  subcommand "logs", "Show logs from grid containers", Kontena::Cli::Grids::LogsCommand
  subcommand ["remove","rm"], "Remove a grid", Kontena::Cli::Grids::RemoveCommand
  subcommand "current", "Show current grid details", Kontena::Cli::Grids::CurrentCommand
  subcommand "env", "Show the current grid environment details", Kontena::Cli::Grids::EnvCommand
  subcommand "audit-log", "Show audit log of the current grid", Kontena::Cli::Grids::AuditLogCommand
  subcommand "list-users", "List current grid users", Kontena::Cli::Grids::ListUsersCommand
  subcommand "add-user", "Add user to the current grid", Kontena::Cli::Grids::AddUserCommand
  subcommand "remove-user", "Remove user from the current grid", Kontena::Cli::Grids::RemoveUserCommand
  subcommand "add-custom-peer", "Add custom peer ip address to the current grid", Kontena::Cli::Grids::AddCustomPeerCommand
  subcommand "remove-custom-peer", "Remove custom peer ip address from the current grid", Kontena::Cli::Grids::RemoveCustomPeerCommand

  def execute
  end
end
