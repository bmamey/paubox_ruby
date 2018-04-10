module Paubox
  class Client
    attr_reader :api_key, :api_user, :api_host

    def initialize(args = {})
      args = defaults.merge(args)
      @api_key = args[:api_key]
      @api_user = args[:api_user]
      @api_host = args[:api_host]
      @api_version = args[:api_version]
      @test_mode = args[:test_mode]
    end

    def defaults
      { api_key: Paubox.configuration.api_key,
        api_user: Paubox.configuration.api_user,
        api_host: 'paubox.net',
        api_version: 'v1',
        test_mode: false }
    end
  end
end
