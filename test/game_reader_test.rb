gem 'minitest'
require './lib/game_reader'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class GameReaderTest < Minitest::Test

  def test_the_scrabble_class_exists
      assert GameReader
  end

end
