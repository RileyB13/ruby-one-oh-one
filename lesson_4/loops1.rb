=begin
2nd Pass at Loops 1 Problems
Question 1
Modify the code so the loop stops after the first iteration.
=end

loop do
  puts 'Just keep printing...'
  break
end

=begin
Answer: added break statement
=end

#------------------------------------------------------------------------------#

=begin
Question 2
The code below is an example of a nested loop. Both loops currently loop 
infinitely. Modify the code so each loop stops after the first iteration.
=end

loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break
  end
  break
end

puts 'This is outside all loops.'

=begin
Answer: added break statements in proper place so that both loops could run
exactly once
=end

#------------------------------------------------------------------------------#

=begin
Question 3
Modify the following loop so it iterates 5 times instead of just once.
=end

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end

=begin
Answer: made iterations count up during each iteration and a break statement
to determine when iterations became large enough to break the loop
=end

#------------------------------------------------------------------------------#

=begin
Question 4
Modify the code below so the loop stops iterating when the user inputs 'yes'.
=end

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'
  puts "Incorrect answer, please put 'yes'."
end

=begin
Answer: added conditional break if the user puts yes, added an error message
that only gets seen if the user types something other than that.
=end

#------------------------------------------------------------------------------#

=begin
Question 5
Modify the code below so "Hello!" is printed 5 times.
=end

say_hello = true
count = 1

while say_hello
  puts 'Hello!'
  count += 1
  say_hello = false if count == 5
end

=begin
Answer: added a counter for iterations, and added a conditional to the false
assignment that waits for the counter to be 5 before assigning.
=end

#------------------------------------------------------------------------------#

=begin
Question 6
Using a while loop, print 5 random numbers between 0 and 99 (inclusive).
The code below shows an example of how to begin solving this exercise.
=end

numbers = []

while numbers.size < 5
  numbers << rand(100)
end

puts numbers
=begin
Answer: I initially added way too much to this because I forgot how puts will
display an array vs p. 
=end

#------------------------------------------------------------------------------#

=begin
Question 7
The following code outputs a countdown from 10 to 1. Modify the code so 
that it counts from 1 to 10 instead.
=end

count = 1

until count > 10
  puts count
  count += 1
end

=begin
Answer: Set count to 1. Set loop to break after the iteration where count 
prints 10.
=end

#------------------------------------------------------------------------------#

=begin
Question 8
Given the array of several numbers below, use an until loop to print each 
number.
=end

numbers = [7, 9, 13, 25, 18]
count = 0

until count == numbers.size
  puts numbers[count]
  count += 1
end

=begin
Answer: Set a counter to index through the array printing each element.
=end

#------------------------------------------------------------------------------#

=begin
Question 9
The code below shows an example of a for loop. Modify the code so that it only 
outputs i if i is an odd number.
=end

for i in 1..100
  puts i if i.odd?
end

=begin
Answer: added conditional with .odd? method that returns true when integer is
odd, and false when even.
=end

#------------------------------------------------------------------------------#

=begin
Question 10
Your friends just showed up! Given the following array of names, use a for
loop to greet each friend individually.
=end

friends = ['Sarah', 'John', 'Hannah', 'Dave']

for friend in friends
  puts "Hello, #{friend}!"
end

=begin
Answer: Created a for loop with friend iterator. Used string interpolation so 
that whatever friend the iteration was on as it moves through the elements in
friends array, that current friend would be printed in the statement.
=end
