# -*- coding: utf-8 -*-
require "pebbles-soreyuke"
require "taem_c_kadai/version"
require "taem_c_kadai/fumin"
require "taem_c_kadai/needed_calorie"
require "taem_c_kadai/needed_bmi"
require "readline"

module TaemCKadai
  def main
    greeting = '不眠に悩んでいるのか体型に悩んでいるのか教えて\n enter fumin or weight'
    puts Pebbles::Soreyuke.AA('apm', greeting)
    input = Readline.readline("> ")
    case input
    when 'fumin' then
      # 不眠の処理
    when 'weight' then
      # 体重系の処理
    else
      puts Pebbles::Soreyuke.AA('apm', '人の話はちゃんと聞け')
    end


    puts TaemCKadai.needed_calorie("M", 60)
    puts TaemCKadai.func_fumin()
  end
end
