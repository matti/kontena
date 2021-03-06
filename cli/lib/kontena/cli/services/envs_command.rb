require_relative 'services_helper'

module Kontena::Cli::Services
  class EnvsCommand < Clamp::Command
    include Kontena::Cli::Common
    include Kontena::Cli::GridOptions
    include ServicesHelper

    parameter "NAME", "Service name"

    def execute
      require_api_url
      token = require_token
      service = client(token).get("services/#{parse_service_id(name)}")
      service["env"].each do |env|
        puts env
      end
    end
  end
end
