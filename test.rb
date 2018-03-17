require 'test/unit'

class Hoge
  def a
    1
  end
end

class TestHoge < Test::Unit::TestCase
  def test_a
    assert_equal 1, Hoge.new.a
  end
end

