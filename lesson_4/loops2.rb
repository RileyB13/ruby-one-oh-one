=begin
2nd Pass of Loops 2
Question 1
Write a loop that prints numbers 1-5 and whether the number is even or odd. 
Use the code below to get started.
=end

count = 1

loop do
  if count.odd?
    puts "#{count} = odd"
  else
    puts "#{count} = even"
  end
  count += 1
  break if count > 5
end

=begin
Answer: I used the .odd? method to check the count each loop, and printed 
both the count and either odd or even until the break condition of count being
more than 5.
=end

#------------------------------------------------------------------------------#

=begin
Question 2
Modify the following code so that the loop stops if number is equal to or 
between 0 and 10.
=end

loop do
  number = rand(100)
  puts number
  break if number >= 0 && number <= 10
end

=begin
Answer: added a break condition and used the and logic to set the bounds that
it needed to be between.
=end

#------------------------------------------------------------------------------#

=begin
Question 3

Write an if/else statement that executes some code if the process_the_loop 
variable is true and some other code when process_the_loop is false. 

Specifically:

--When process_the_loop is true, execute a loop that iterates exactly once and 
prints The loop was processed during that iteration.

--When process_the_loop is false, just print The loop wasn't processed!.

Use the following code to initialize process_the_loop. It will randomly 
assign the variable to either true or false.
=end

process_the_loop = [true, false].sample

if process_the_loop
  loop do
    puts "The loop was processed"
    break
  end
else
  puts "The loop wasn't processed"
end

=begin
Answer: if true then loop break. if false then display no loop message.
=end

#------------------------------------------------------------------------------#

=begin
Question 4

The code below asks the user "What does 2 + 2 equal?" and uses #gets to 
retrieve the user's answer. Modify the code so "That's correct!" is printed 
and the loop stops when the user's answer equals 4. Print "Wrong answer. 
Try again!" if the user's answer doesn't equal 4.
=end

loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer == 4
    puts "That's correct!"
    break
  else
    puts "Wrong answer, try again!"
  end
end

=begin
Answer: 
=end

#------------------------------------------------------------------------------#

=begin
Question 5

Modify the code below so that the user's input gets added to the numbers array.
Stop the loop when the array contains 5 numbers.
=end

numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers << input
  break if numbers.size == 5
end
puts numbers

=begin
Answer: shovel input into numbers array each loop. break when the size of the 
numbers array equals 5.
=end

#------------------------------------------------------------------------------#

=begin
Question 6

Given the array below, use loop to remove and print each name from first to 
last. Stop the loop once names doesn't contain any more elements.
=end

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.shift
  break if names.empty?
end

=begin
Answer: Shift method takes first element out of the array and returns it. Break
when array is empty.
=end

#------------------------------------------------------------------------------#

=begin
Question 7

The method below counts from 0 to 4. Modify the block so that it prints the 
current number and stops iterating when the current number equals 2.
=end

5.times do |index|
  puts index
  break if index == 2
end

=begin
Answer: Just added a simple break condition for when index is equal to 2
=end

#------------------------------------------------------------------------------#

=begin
Question 8

Using next, modify the code below so that it only prints positive integers 
that are even.
=end

number = 0

until number == 10
  number += 1
  puts number if number.even?
  next
end

=begin
Answer: I did it a little different from the book but they're the same kinda.
=end

#------------------------------------------------------------------------------#

=begin
Question 9

The following code increments number_a and number_b by either 0 or 1. loop is 
used so that the variables can be incremented more than once, however, break 
stops the loop after the first iteration. Use next to modify the code so that 
the loop iterates until either number_a or number_b equals 5. Print "5 was 
reached!" before breaking out of the loop.
=end

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  next if number_a < 5 && number_b < 5
  puts "5 was reached!"
  break
end

=begin
Answer: Again I did pretty much the same as the book just inverted my methods.
if instead of unless && instead of ||.
=end

#------------------------------------------------------------------------------#

=begin
Question 10

Given the code below, use a while loop to print "Hello!" twice.
=end

def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings > 0
  greeting
  number_of_greetings -= 1
end

=begin
Answer: I need to read directions better. I was changing the greeting method
using number of greetings as a parameter. This is better.
=end




