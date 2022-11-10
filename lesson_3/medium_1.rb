=begin
Question 1
Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in the 
days before computers had video screens).

For this practice problem, write a one-line program that creates the following 
output 10 times, with the subsequent line indented 1 space to the right:

The Flintstones Rock!
 The Flintstones Rock!
  The Flintstones Rock!
=end

# Answer:  
10.times {|x| puts "The Flintstones Rock!".prepend(" " * x)}

#------------------------------------------------------------------------------#

=begin
Question 2
The result of the following statement will be an error:

puts "the value of 40 + 2 is " + (40 + 2)

Why is this and what are two possible ways to fix this?

--Answer: You can't concatenate an integer with a string without some kind of 
type conversion. 
--1. puts "the value of 40 + 2 is " + (40 + 2).to_s
--2. puts "the value of 40 + 2 is #{40 + 2}"
=end 
#------------------------------------------------------------------------------#

=begin
Question 3
Alan wrote the following method, which was intended to show all of the factors 
of the input number:

def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

Alyssa noticed that this will fail if the input is 0, or a negative number, and
asked Alan to change the loop. How can you make this work without using the 
begin/end until construct? Note that we're not looking to find the factors for 
0 or negative numbers, but we just want to handle it gracefully instead of 
raising an exception or going into an infinite loop.
=end

# Answer
def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

=begin
--Bonus 1
What is the purpose of the number % divisor == 0 ?

--Answer: To make sure that only numbers that divide without a remainder are
added to the array of factors.

--Bonus 2
What is the purpose of the second-to-last line (line 8) in the method 
(the factors before the method's end)?

--Answer: To return the value of array factors after these truthy values have
been shoveled into it.
=end

#------------------------------------------------------------------------------#

=begin
Question 4
Alyssa was asked to write an implementation of a rolling buffer. Elements are 
added to the rolling buffer and if the buffer becomes full, then new elements 
that are added will displace the oldest elements in the buffer.

She wrote two implementations saying, "Take your pick. Do you like << or + for 
modifying the buffer?". Is there a difference between the two, other than what 
operator she chose to use to concatenate an element to the buffer?

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# Answer: 
The + is going to create a new resulting array, where as the shovel is going 
to modify the existing.
=end

#------------------------------------------------------------------------------#

=begin
Question 5
Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator. 
A user passes in two numbers, and the calculator will keep computing the 
sequence until some limit is reached.

Ben coded up this implementation but complained that as soon as he ran it, he 
got an error. Something about the limit variable. What's wrong with the code?

limit = 15

def fib(first_num, second_num)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

--Answer: The limit variable is outside the scope of the method definition of 
fib.

How would you fix this so that it works?
=end

# Answer:
# I threw in 15 as a default value. However a third argument can be with the 
# method invocation passed if a different limit is desired.


def fib(first_num, second_num, limit = 15)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

#------------------------------------------------------------------------------#

=begin
Question 6
What is the output of the following code?

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8
=end

# Answer:
# += is looked at as assignment, rather than mutation. Answer isn't modified.
# So what you're seeing is a new return value being saved to new_answer: 50 
# and then answer - 8 is going to be 42 - 8, which is 34.

#------------------------------------------------------------------------------#

=begin
Question 7
One day Spot was playing with the Munster family's home computer and he wrote 
a small program to mess with their demographic data:
=end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

=begin
After writing this method, he typed the following...and before Grandpa could 
stop him, he hit the Enter key with his tail:
=end

mess_with_demographics(munsters)

=begin
Did the family's data get ransacked? Why or why not?
=end

# Answer: 
# Yes. []= is a mutator. The collection is the same collection, but the elements
# are changed.

#------------------------------------------------------------------------------#

=begin
Question 8
Method calls can take expressions as arguments. Suppose we define a method 
called rps as follows, which follows the classic rules of rock-paper-scissors 
game: it returns the winning fist or, in the case of a tie, the fist that both 
players played.

def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

What is the result of the following call?

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")
=end

# Answer:
# Paper

#------------------------------------------------------------------------------#

=begin
Question 9
Consider these two simple methods:

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

What would be the return value of the following method invocation?

bar(foo)
=end

# Answer: 
# "no"
#------------------------------------------------------------------------------#
