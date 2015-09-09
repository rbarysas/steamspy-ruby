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
      @data = data
    end
  end
end
