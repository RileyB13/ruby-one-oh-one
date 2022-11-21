=begin
P
Count the frequency characters in the string and add them to a hash. Where
the letter is the key, and how many times it shows up is the value.

input: string
output: hash

E-

D - 
string, hash

a - 
initialize empty hash
turn string into array for more method utility
if letter is not already in the hash, it needs added to the hash with value of 1
if letter is in the hash, it's value needs to count up by one.
save to empty hash
code with intent -
=end

statement = "The Flintstones Rock"
hash = {}

hash = statement.split.join.chars.each_with_object({}) do |char, hash|
  if hash.key?(char)
    hash[char] += 1
  else
    hash[char] = 1
  end
end

p hash