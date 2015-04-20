class String
  define_method(:snoopify) do
    words = self.split
    output = []

    words.each do |word|
      output << snoopify_word(word)
    end

    output.join(' ')
  end

  private

  define_method(:snoopify_word) do |word|

    new_word = ""

    word.each_char.with_index do |char, index|
      if char == 'S' || (char.downcase == 's' && index == 0)
        new_word << char
      elsif char == 's'
        new_word << 'z'
      else
        new_word << char
      end
    end

    new_word

  end
end
