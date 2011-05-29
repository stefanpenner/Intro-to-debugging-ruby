class Usefuller
  def square(x)
    x**2
  end
end

# Seperate File
require 'rubygems'
require 'minitest/autorun'

class TestUsefuller < MiniTest::Unit::TestCase
  def setup
    @usefull = Usefuller.new
  end

  def test_that_square_of_1_is_1
    assert_equal 1, @usefull.square(1)
  end

  def test_that_square_of_2_is_4
    assert_equal 4, @usefull.square(2)
  end

  def test_that_square_of_4_is_16
    assert_equal 16, @usefull.square(4)
  end
end
