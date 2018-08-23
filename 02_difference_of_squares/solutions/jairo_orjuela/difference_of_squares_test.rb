require 'minitest/autorun'
require_relative 'difference_of_squares'

class Difference_of_squaresTest < Minitest::Test

def test_square_of_the_sum
  assert_equal 2640, Difference_of_squares.difference(10)
  assert_equal 170, Difference_of_squares.difference(5)
end

end
