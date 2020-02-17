

class GameController < ApplicationController
  def new
    @letters = []
    10.times{ @letters << ("A".."Z").to_sample }
    return @letters
  end

  def english_word
    url = "https://wagon-dictionary.herokuapp.com/#{@answer}"
    word_dictionary = open(url).read
    word = JSON.parse(word_dictionary)
    return word['found']
  end

  def score
  end
end
