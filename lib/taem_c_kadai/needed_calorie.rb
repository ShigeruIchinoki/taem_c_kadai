# -*- coding: utf-8 -*-
module TaemCKadai
  def self.needed_calorie(sex, weight)
    self.japanese_bee(sex, weight)
  end
  
  # https://ja.wikipedia.org/wiki/ハリス-ベネディクトの式
  def self.japanese_bee(sex, weight)
    if sex == "M" 
      14.1 * weight + 620
    elsif sex == "F"
      10.8 * weight + 620
    end
  end
end
