require 'test/unit'
require 'net/http'

class TestHoge < Test::Unit::TestCase
  def test_server
    url = URI.parse('http://localhost:9292')
    res = Net::HTTP.start(url.host, url.port) {|http|
      http.get('/')
    }

    assert_equal 'hoge', res.body
  end
end

