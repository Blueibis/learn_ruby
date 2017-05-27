def echo(say)
  say
end

def shout(say)
  say.upcase
end

def repeat(say, num = 2)
  says = (say + " ") * num
  says.rstrip
end

def start_of_word(word, num = 0)
  word[0..num-1]
end

def first_word(say)
  say.split.first
end

def titleize(say)
  ignore = ["and", "over", "the"]
  result = say.split(" ").map do |word|
    unless ignore.include?(word)
      word.capitalize!
    else word
    end
  end
  result[0].capitalize!
  result.join(" ")
end
