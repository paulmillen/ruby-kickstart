# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong
  attr_accessor :bottles

  def initialize(bottles)
    if bottles < 0
      @bottles = 0
    elsif bottles > 99
      @bottles = 99
    else
      @bottles = bottles
    end
  end

  def in_words(num)

        numbers_to_name = {
            90 => "Ninety",
            80 => "Eighty",
            70 => "Seventy",
            60 => "Sixty",
            50 => "Fifty",
            40 => "Forty",
            30 => "Thirty",
            20 => "Twenty",
            19 =>"Nineteen",
            18 =>"Eighteen",
            17 =>"Seventeen",
            16 =>"Sixteen",
            15 =>"Fifteen",
            14 =>"Fourteen",
            13 =>"Thirteen",
            12 =>"Twelve",
            11 => "Eleven",
            10 => "Ten",
            9 => "Nine",
            8 => "Eight",
            7 => "Seven",
            6 => "Six",
            5 => "Five",
            4 => "Four",
            3 => "Three",
            2 => "Two",
            1 => "One",
            0 => "Zero"
          }

        numstring = ""

        numstring = numbers_to_name.fetch(num, false)

        numstring = "#{numbers_to_name[((num/10).floor)*10]}-#{(numbers_to_name[num.to_s[1].to_i]).to_s.downcase}" if numstring == false

        numstring
  end

  def print_song

      bottles.downto 1 do |x|
        song(x)
      end
  end


  def song(n)

    puts "#{in_words(n)} #{bottle(n)} of beer on the wall,",
          "#{in_words(n)} #{bottle(n)} of beer,",
          "Take one down, pass it around,",
          "#{in_words(n-1)} #{bottle(n-1)} of beer on the wall."
  end

  def bottle(n)
    if n == 1 then 'bottle' else 'bottles' end
  end


end

# I had to copy most of this solution... but I got the integer to word translation on my own(ish)!
