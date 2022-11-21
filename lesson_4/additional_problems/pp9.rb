words = "the flintstones rock"

words = words.split.map do |word|
  word.capitalize!
end

p words.join(" ")
