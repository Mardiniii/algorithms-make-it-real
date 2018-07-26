require 'minitest/autorun'
require_relative 'raindrops'

class RaindropsTest < Minitest::Test

  def test_if_number_has_3_as_factor_pling
    assert_equal "Pling", Raindrops.raindrop(3)
  end

  def test_if_number_has_5_as_factor_plang
    assert_equal "Plang", Raindrops.raindrop(5)
  end

  def test_if_number_has_7_as_factor_plang
    assert_equal "Plong", Raindrops.raindrop(14)
  end

  def test_if_number_has_7_3_5_as_factor_plang
    assert_equal "PlingPlang", Raindrops.raindrop(30)
  end

end
