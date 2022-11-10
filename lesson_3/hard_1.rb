=begin
Question 1

What do you expect to happen when the greeting variable is referenced in the 
last line of the code below?
=end

if false
  greeting = "hello world"
end

p greeting

=begin
Answer: 
The code will error out. You are defining a variable inside a condition that
won't happen, and then trying to call that variable. Variable doesn't exist.

Actual Real Answer:
Greeting is nil. Exception isn't thrown. When you initialize a local variable
within an if clause, if that if clause isn't executed, the local variable
is initialized. If executed, acts as expected.
=end

#------------------------------------------------------------------------------#

=begin
Question 2

What is the result of the last line in the code below?
=end

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

=begin
--Answer:
OHHHHHH They're both pointing to the same string. So when you shovel (mutator)
the literal in the hash, AND the local variable update to "hi there"
=end

#------------------------------------------------------------------------------#

=begin
Question 3

In other practice problems, we have looked at how the scope of variables 
affects the modification of one "layer" when they are passed to another.

To drive home the salient aspects of variable scope and modification of 
one scope by another, consider the following similar sets of code.

What will be printed by each of these code groups?
=end

def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

=begin
Answer: They'll come out 
one is: "one"
two is: "two"
three is: "three"
Because the method isn't mutating.
=end

def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

=begin
--Answer:
Same as the first one.
=end

def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

=begin
Answer:
That's the stuff
one is: "two"
two is: "three"
three is: "one"
gsub! is a mutator.
=end

#------------------------------------------------------------------------------#

=begin 
Question 4
Ben was tasked to write a simple ruby method to determine if an input string 
is an IP address representing dot-separated numbers. e.g. "10.4.5.11". He is
not familiar with regular expressions. Alyssa supplied Ben with a method called
is_an_ip_number? that determines if a string is a numeric string between 
0 and 255 as required for IP numbers and asked Ben to use it.
=end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end
  return true
end

=begin
Alyssa reviewed Ben's code and says "It's a good start, but you missed a few 
things. You're not returning a false condition, and you're not handling the 
case that there are more or fewer than 4 components to the IP address 
(e.g. "4.5.5" or "1.2.3.4.5" should be invalid)."

Help Ben fix his code.
Answer below:
=end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.size != 4
  
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end
  
  true
end

=begin
Answer:
I actually did really well with my initial answer. I didn't add the line spaces
around the while loop(visual preference), and my true return value was still 
unnecessarily explicit (implicitly would give the same value with less 
code work). Other than that I definitely had the right idea.
=end
