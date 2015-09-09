require 'test_helper'

class ApiTest < Minitest::Test
  def setup
    @api = SteamSpy::Api.new
  end

  def test_appdetails
    assert_raises ArgumentError do
      @api.appdetails
    end

    assert_equal(@api.appdetails(730).status, 200)
  end

  def test_genre
    assert_raises ArgumentError do
      @api.genre
    end

    assert_equal(@api.genre("Early Access").status, 200)
  end

  def test_top100in2weeks
    assert_equal(@api.top100in2weeks.status, 200)
  end

  def test_top100forever
    assert_equal(@api.top100forever.status, 200)
  end

  def test_top100owned
    assert_equal(@api.top100owned.status, 200)
  end

  def test_all
    assert_equal(@api.all.status, 200)
  end
end
