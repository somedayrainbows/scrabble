gem 'minitest'
require './lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_the_scrabble_class_exists
      assert Scrabble
  end
  
  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score_with_multipliers
    skip
    game = Scrabble.new
    game.score_with_multipliers('hello', [1,2,1,1,1])

    assert_equal 9, game.score_with_multipliers('hello', [1,2,1,1,1])
  end

  def test_it_can_account_for_double_word_score
    skip
    game = Scrabble.new
    game.score_with_multipliers('hello', [1,2,1,1,1], 2)

    assert_equal 18, game.score_with_multipliers('hello', [1,2,1,1,1], 2)
  end

  def test_it_can_award_all_letter_bonus_first
    skip
    game = Scrabble.new
    game.score_with_multipliers('sparkle', [1,2,1,3,1,2,1], 2)

    assert_equal 58, game.score_with_multipliers('sparkle', [1,2,1,3,1,2,1], 2) #if word has 7 letters add 10 pts
  end

end
