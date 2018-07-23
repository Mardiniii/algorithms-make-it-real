require "minitest/autorun"
require_relative 'raindrops'

class RaindropsTest < Minitest::Test
  def test_check_modulus_true
    today = Raindrops.new(10)
    assert today.check_modulus(9,9) == true
  end

  def test_check_modulus_false
    today = Raindrops.new(10)
    assert today.check_modulus(9,10) == false
  end

  def test_check_modulus_factor_3
    today = Raindrops.new(10)
    assert today.check_modulus(9,9) == true
  end

  def test_check_modulus_factor_5
    today = Raindrops.new(10)
    assert today.check_modulus(25,5) == true
  end

  def test_check_modulus_factor_7
    today = Raindrops.new(10)
    assert today.check_modulus(42,7) == true
  end

  def test_check_modulus_no_factor
    today = Raindrops.new(10)
    assert today.check_modulus(34,5) == false
  end

  def test_pling_positive
    today = Raindrops.new(9)
    assert today.pling == "Pling"
  end

  def test_pling_negative
    today = Raindrops.new(14)
    assert today.pling == ""
  end

  def test_pling_positive
    today = Raindrops.new(15)
    assert today.plang == "Plang"
  end

  def test_pling_negative
    today = Raindrops.new(14)
    assert today.plang == ""
  end

  def test_pling_positive
    today = Raindrops.new(14)
    assert today.plong == "Plong"
  end

  def test_pling_negative
    today = Raindrops.new(12)
    assert today.plong == ""
  end

  def test_if_it_is_rainning_no
    today = Raindrops.new(34)
    assert today.is_raining == "34"
  end

  def test_if_it_is_rainning_pling
    today = Raindrops.new(9)
    assert today.is_raining == "Pling"
  end

  def test_if_it_is_rainning_plang
    today = Raindrops.new(10)
    assert today.is_raining == "Plang"
  end

  def test_if_it_is_rainning_plong
    today = Raindrops.new(14)
    assert today.is_raining == "Plong"
  end

  def test_if_it_is_rainning_pling_plang
    today = Raindrops.new(15)
    assert today.is_raining == "PlingPlang"
  end

  def test_if_it_is_rainning_pling__plong
    today = Raindrops.new(35)
    assert today.is_raining == "PlangPlong"
  end
end
