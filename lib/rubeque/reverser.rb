class Reverser
  def reverse_each_word(text)
    text.split.map { |word| word.reverse }.join(' ') 
  end
end
