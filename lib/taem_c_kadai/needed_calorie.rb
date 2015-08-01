# -*- coding: utf-8 -*-
module TaemCKadai
  def self.needed_calorie(sex, weight)
    self.japanese_bee(sex, weight)
  end
  
  # https://ja.wikipedia.org/wiki/ハリス-ベネディクトの式
  def self.japanese_bee(sex, weight) # kcal
    if sex == "M" 
      14.1 * weight + 620
    elsif sex == "F"
      10.8 * weight + 620
    end
  end

  # http://homegym-training.com/tools/tool_04.html
  def self.needed_calorie_by(sex, weight, mets) # hour
    self.needed_calorie(sex, weight) / 1.05 / weight / mets
  end

  def self.needed_calorie_by_sleeping(sex, weight)
    self.needed_calorie_by(sex, weight, 0.9)
  end

  def self.needed_calorie_by_tennis(sex, weight)
    self.needed_calorie_by(sex, weight, 7.0)
  end
end
