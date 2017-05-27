def translate(words)
  pig = words.split(" ")
  pig.map do |word|
    if word[0] == "a" || word[0] == "e" || word[0] == "i" ||  word[0] == "o" || word[0] == "u"
    else
        if word[0] == "a" || word[0] == "e" || word[0] == "i" ||  word[0] == "o" || word[0] == "u"
        elsif word[0..2] == "sch"
          word << word[0..2]
          word.slice!(0..2)
        elsif word[0..2] == "squ"
          word << word[0..2]
          word.slice!(0..2)
        elsif word[0..1] == "sq"
          word << word[0..1]
          word.slice!(0..1)
        elsif word[0..1] == "qu"
          word << word[0..1]
          word.slice!(0..1)
        else
          consonant = word.split(//)
          consonant.map do |letter|
            if word[0] == "a" || word[0] == "e" || word[0] == "i" ||  word[0] == "o" || word[0] == "u"
            else
              word << word[0]
              word.slice!(0)
            end
          end
        end
    end
    word << "ay"
  end
  pig.join(" ")
end
