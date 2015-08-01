require 'test_helper'

class TaemCKadaiTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::TaemCKadai::VERSION
  end

  def test_needed_calorie
    assert_equal 761, TaemCKadai.japanese_bee("M", 10)
  end
end
