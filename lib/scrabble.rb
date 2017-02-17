require 'pry'

class Scrabble
  attr_reader :word


  def score(word) #word is hello
    @capped_letters = word.each_char.map { |letter| letter.capitalize } #=> ["H", "E", "L", "L", "O"]
    capped_letters.map {}
  binding.pry
  end

  # def score_with_multipliers(word, square_values)
  #
  # end

  def point_values(capped_letters)
    points = {
      "A"=>1, "B"=>3, "C"=>3, "D"=>2,
      "E"=>1, "F"=>4, "G"=>2, "H"=>4,
      "I"=>1, "J"=>8, "K"=>5, "L"=>1,
      "M"=>3, "N"=>1, "O"=>1, "P"=>3,
      "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
      "U"=>1, "V"=>4, "W"=>4, "X"=>8,
      "Y"=>4, "Z"=>10
    }

    points[capped_letters]

  end
end
