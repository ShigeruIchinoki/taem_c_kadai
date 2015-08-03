# -*- coding: utf-8 -*-
require "pebbles-soreyuke"
require "taem_c_kadai/version"
#require "taem_c_kadai/fumin"
require "taem_c_kadai/needed_calorie"
require "taem_c_kadai/needed_bmi"
require "readline"

module TaemCKadai
  def self.ask
    greeting = '不眠に悩んでいるのか体型に悩んでいるのか教えて'
    puts Pebbles::Soreyuke.AA('apm', greeting)
    input = Readline.readline("enter fumin or weight > ")
    case input
    when 'fumin' then
      ## 不眠の処理
    when 'weight' then
      ## 体重系の処理
      # BMI
      puts Pebbles::Soreyuke.AA('apm', '身長は?')
      height = Readline.readline("(cm)> ")
      puts Pebbles::Soreyuke.AA('cpm', '私の身長は' + height + "です")
      sleep(1)
      puts Pebbles::Soreyuke.AA('apm', '体重は?')
      weight = Readline.readline('(kg)> ')
      puts Pebbles::Soreyuke.AA('cpm', '私の体重は' + weight + 'です')
      bmi = TaemCKadai.needed_bmi(weight, height)
      sleep(1)
      puts Pebbles::Soreyuke.AA('apm', 'お前のBMIは' + bmi.to_s + 'だ')
      #　カロリー
      sleep(1)
      puts Pebbles::Soreyuke.AA('apm', '性別は?')
      sex = Readline.readline('(m or f)> ')
      sex.upcase!
      case sex
        when 'M' then
          puts Pebbles::Soreyuke.AA('cpm', '男です')
        when 'F' then
          puts Pebbles::Soreyuke.AA('cpm', '女です')
        else
          puts '判別できません'
      end
      calorie = TaemCKadai.needed_calorie(sex, weight.to_i)
      sleep(1)
      puts Pebbles::Soreyuke.AA('apm', 'お前の基礎代謝量は' + calorie.to_s + "だ")
    else
      puts Pebbles::Soreyuke.AA('apm', '人の話はちゃんと聞け')
    end

  end
end
