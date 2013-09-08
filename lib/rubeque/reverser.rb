class Reverser
  def reverse_each_word(text)
    text.split.inject("") { |txt, word| txt << word.reverse << " " }.rstrip
  end

    

end
