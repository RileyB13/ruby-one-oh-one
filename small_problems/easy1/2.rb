=begin
P - Process the Problem: 
  Define a method that takes an integer (positive, negative, or zero) as an 
  argument. Have it return true if that integer's absolute value is odd.
  input: integer
  output: boolean
    -absolute value is distance from zero. in absolute value -1 == 1. both would
    be odd and thus return true.
    -can't use #odd? or #even? in method.
    -odd == true
    -even == false

E - Examples
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

D - Data Structures
  I'll just be using the integers on this one.

A - Algorithm

  - Define method taking an integer as an argument
    - if the integer divides evenly by 2 with no remainder then it is even
      and should return false
    - otherwise it should return true
    
C - Code with intent
=end


def is_odd?(int)
  int % 2 == 0 ? false : true
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

puts 84563 % 2
=begin
book solution: 

def is_odd?(number)
  number % 2 == 1
end

Modulo of 2 will always return either a 1 or a 0.
=end
