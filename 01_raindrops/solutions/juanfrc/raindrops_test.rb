require 'minitest/autorun'
require_relative 'raindrops'

class RaindropsTest < Minitest::Test
  def test_translation_for_0_is_0
    assert_equal 0, Raindrops.translate(0)
    assert_equal 0, Raindrops.translate_prime(0)
  end

  def test_translation_for_1_is_1_negative
    assert_equal -1, Raindrops.translate(-1)
    assert_equal -1, Raindrops.translate_prime(-1)
  end

  def test_translation_for_2_is_2
    assert_equal 0, Raindrops.translate(0)
    assert_equal 0, Raindrops.translate_prime(0)
  end

  def test_translation_for_6_is_Pling
    assert_equal 'Pling', Raindrops.translate(6)
    assert_equal 'Pling', Raindrops.translate_prime(6)
  end

  def test_translation_for_10_is_Plang
    assert_equal 'Plang', Raindrops.translate(10)
    assert_equal 'Plang', Raindrops.translate_prime(10)
  end

  def test_translation_for_14_is_Plong
    assert_equal 'Plong', Raindrops.translate(14)
    assert_equal 'Plong', Raindrops.translate_prime(14)
  end

  def test_translation_for_15_is_PlingPlang
    assert_equal 'PlingPlang', Raindrops.translate(15)
    assert_equal 'PlingPlang', Raindrops.translate_prime(15)
  end

  def test_translation_for_21_is_PlingPlong
    assert_equal 'PlingPlong', Raindrops.translate(21)
    assert_equal 'PlingPlong', Raindrops.translate_prime(21)
  end

  def test_translation_for_35_is_PlangPlong
    assert_equal 'PlangPlong', Raindrops.translate(35)
    assert_equal 'PlangPlong', Raindrops.translate_prime(35)
  end

  def test_translation_for_105_is_PlingPlangPlong
    assert_equal 'PlingPlangPlong', Raindrops.translate(105)
    assert_equal 'PlingPlangPlong', Raindrops.translate_prime(105)
  end

  def test_translation_for_11_is_11
    assert_equal 11, Raindrops.translate(11)
    assert_equal 11, Raindrops.translate_prime(11)
  end

  def test_translation_for_nil_is_Error
    assert_equal 'Error', Raindrops.translate(nil)
    assert_equal 'Error', Raindrops.translate_prime(nil)
  end

  def test_translation_for_string_is_Error
    assert_equal 'Error', Raindrops.translate('Text')
    assert_equal 'Error', Raindrops.translate_prime('Text')
  end
end
