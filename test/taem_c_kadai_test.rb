require 'test_helper'

class TaemCKadaiTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::TaemCKadai::VERSION
  end

  def test_needed_calorie
    assert_equal 761, TaemCKadai.japanese_bee("M", 10)
  end

  def test_needed_bmi
    assert_equal 10000, TaemCKadai.japanese_bee(1, 1)
  end

end
