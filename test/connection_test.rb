require 'test_helper'

class ConnectionTest < Minitest::Test
  def setup
    @connection = SteamSpy::Connection.new
  end

  def test_request
    assert_raises ArgumentError do
      @connection.request
    end
  end
end
