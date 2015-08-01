# -*- coding: utf-8 -*-
module TaemCKadai
  def self.needed_bmi(kg, cm)
    kg.to_f / (cm.to_f * 0.01) ** 2
  end
end

