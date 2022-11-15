=begin
P - Process the Problem:
  Input: String, Integer
  Output: String repeated
  Rules: - Integer must be positive
         - Method must display rather than return
        
E - Examples:
  repeat('Hello', 3)
  
  => Hello
     Hello
     Hello

D - Expressions/Strings

A - Define method that takes a string and integer as an argument
    -iterate a certain amount of times determined by the passed integer    
    -display the string in each iteration of that loop
    
C - Code with Intent
=end

def repeat(str, num)
  num.times do
    puts str
  end
end

repeat('Hello', 3)