require_relative '../../common'

module Kontena::Cli::Master::Users
  class InviteCommand < Clamp::Command
    include Kontena::Cli::Common

    parameter "EMAIL ...", "List of emails"

    def execute
      require_api_url
      token = require_token
      email_list.each do |email|
        begin
          data = { email: email }
          response = client(token).post('users', data)
          puts "Invitation send to #{email}"
        rescue
          puts "Failed to invite #{email}".colorize(:red)
          puts exc.message
        end
      end
    end
  end
end