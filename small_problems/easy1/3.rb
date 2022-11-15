=begin
P - Process the Problem
  Method with a positive integer as an argument and returns an array of the
  individual digits that make up the number.
  input: positive integer
  output: array of integers
  rules: -positive integers only
         -return array rather than display
         
E - Examples
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

D - Data Structure
  We'll be taking integers and turning them into arrays.
  
A - Algo
  My current thought is to attempt to run a split method on the integer.
  However my sneaking suspicion is that that only works on strings. So my next
  thought is below. (My suspicions were correct. Good to know.)
    -Define method that takes an integer as an argument
      -turn argument integer into a string
      -split string
        -this returns an array of the string versions of the number.
      -turn the split strings into integers
      -add numbers to array
      -return array with integers

C - Code with Intent
=end

def digit_list(number)
  return_array = []
  string_array = number.to_s.chars
  string_array.each do |num|
    return_array << num.to_i
  end
  return_array
end
  
  
p digit_list(12345)
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

=begin
brute force book solution:

def digit_list(number)
  digits = []
  loop do
    number, remainder = number.divmod(10)
    digits.unshift(remainder)
    break if number == 0
  end
  digits
end

idiomatic book solution:
def digit_list(number)
  number.to_s.chars.map(&:to_i)
end
=end