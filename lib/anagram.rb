# Your code goes here!
class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(array)
    # @word == "listen" 
    # array = %w(enlists google inlets banana) 
    new_array = Array.new
    sample_word = @word.split("").sort # %w(l i s t e n) 
    array.each do |word|
      # word == enlist
      if word.split("").sort == sample_word #[e, n, l ,i ,s, t]
        new_array.push(word)
      end
    end
    new_array
  end

end
