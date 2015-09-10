require 'httparty'

module SteamSpy
  class Connection
    include HTTParty
    base_uri 'http://steamspy.com/api.php'

    def request(uri)
      raise ArgumentError unless uri
      self.class.get(uri)
    end
  end

  class Response
    attr_reader :status
    attr_reader :data

    def initialize(status, data)
      @status = status
      begin
        @data = JSON.parse(data)
      rescue
        @data = {}
      end
    end
  end
end
