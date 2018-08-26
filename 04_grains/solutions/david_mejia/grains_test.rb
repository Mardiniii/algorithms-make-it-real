require "minitest/autorun"
require_relative 'grains'

class Grain < Minitest::Test

  def test_length_of_chessboard
    grains = Grains.new
    assert grains.chessboard.length == 64
  end

  def test_number_grains_for_4th_position
    grains = Grains.new
    assert grains.each(x: 4) == 8
  end

  def test_number_grains_for_5th_position
    grains = Grains.new
    assert grains.each(x: 5) == 16
  end

  def test_number_grains_for_16th_position
    grains = Grains.new
    assert grains.each(x: 16) == 32768
  end

  def test_number_grains_for_32th_position
    grains = Grains.new
    assert grains.each(x: 32) == 2147483648
  end

  def test_total_number_of_grains
    grains = Grains.new
    assert grains.total == 18446744073709551615
  end

  def test_square_0_raises_an_exception
    grains = Grains.new
    assert_raises(ArgumentError) { grains.each(x: 0) }
  end

  def test_negative_square_raises_an_exception
    grains = Grains.new
    assert_raises(ArgumentError) { grains.each(x: -1)}
  end

  def test_square_greater_than_64_raises_an_exception
    grains = Grains.new
    assert_raises(ArgumentError) { grains.each(x: 65) }
  end
end
