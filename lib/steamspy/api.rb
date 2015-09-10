module SteamSpy
  class Api
    def initialize
      @connection = Connection.new unless @connection
    end

    def appdetails(appid)
      raise ArgumentError unless appid
      req = @connection.request("?request=appdetails&appid=#{appid}")
      Response.new(req.code, req.body)
    end

    def genre(genre)
      raise ArgumentError unless genre
      genre = genre.gsub!(/\s+/, '+')
      req = @connection.request("?request=genre&genre=#{genre}")
      Response.new(req.code, req.body)
    end

    def top100in2weeks
      req = @connection.request("?request=top100in2weeks")
      Response.new(req.code, req.body)
    end

    def top100forever
      req = @connection.request("?request=top100forever")
      Response.new(req.code, req.body)
    end

    def top100owned
      req = @connection.request("?request=top100owned")
      Response.new(req.code, req.body)
    end

    def all
      req = @connection.request("?request=all")
      Response.new(req.code, req.body)
    end
  end
end
