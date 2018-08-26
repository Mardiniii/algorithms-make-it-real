require "minitest/autorun"
require_relative 'grains'

class Grain < Minitest::Test

  def test_length_of_chessboard
    chessboard = Grains.new
    assert chessboard.chessboard.length == 64
  end

  def test_number_grains_for_4th_position
    chessboard = Grains.new
    assert chessboard.each_position(x: 4) == 8
  end

  def test_number_grains_for_5th_position
    chessboard = Grains.new
    assert chessboard.each_position(x: 5) == 16
  end

  def test_number_grains_for_16th_position
    chessboard = Grains.new
    assert chessboard.each_position(x: 16) == 32768
  end

  def test_number_grains_for_32th_position
    chessboard = Grains.new
    assert chessboard.each_position(x: 32) == 2147483648
  end

  def test_total_number_of_grains
    chessboard = Grains.new
    assert chessboard.total_grains == 18446744073709551615
  end

  def test_square_0_raises_an_exception
    chessboard = Grains.new
    assert_raises(ArgumentError) { chessboard.each_position(x: 0) }
  end

  def test_negative_square_raises_an_exception
    chessboard = Grains.new
    assert_raises(ArgumentError) { chessboard.each_position(x: -1)}
  end

  def test_square_greater_than_64_raises_an_exception
    chessboard = Grains.new
    assert_raises(ArgumentError) { chessboard.each_position(x: 65) }
  end
end
