require 'test_helper'

class TaemCKadaiTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::TaemCKadai::VERSION
  end

  def test_needed_calorie
    assert_equal 761, TaemCKadai.japanese_bee("M", 10)
  end

  def test_needed_calorie_by_tennis
    assert_equal 10.353741496598639, TaemCKadai.needed_calorie_by_tennis("M", 10)
  end

  def test_needed_calorie_by_sleeping
    assert_equal 80.52910052910052, TaemCKadai.needed_calorie_by_sleeping("M", 10)
  end

  #bii
  def test_needed_bmi
    assert_equal 10000, TaemCKadai.needed_bmi(1, 1)
  end
end
