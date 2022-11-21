=begin
What happens when we modify an array while we are iterating over it? What would
be output by the code?
=end

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

#What about this code?
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

=begin
Answer: I need to slow down and read the difference between output(what is
displayed to the terminal) and return. I read too quickly through the questions
and end up getting the wrong answer because I'm looking for the wrong answer.
=end
