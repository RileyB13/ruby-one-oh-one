# Small Problems
# Documentation Again
=begin
Question 1
Locate the ruby documentation for methods File::path and File#path. How are 
they different?

Answer 1
File::path is a class method and is called on File class. File#path is an
instance method and is called on instances of the File class.

--------------------------------------------------------------------------------

Question 2
Assume you have the following code:

require 'date'

puts Date.civil
puts Date.civil(2016)
puts Date.civil(2016, 5)
puts Date.civil(2016, 5, 13)

What will each of the 4 puts statements print?

Answer 2
1. #<Date: -4712-01-01>
2. #<Date: 2016-01-01>
3. #<Date: 2016-05-01>
4. #<Date: 2016-05-13>

p showed me the return values more similar to the documentation. puts
displays just a string of the date without the full date object in carrots
or choice of calendar.
=end

#------------------------------------------------------------------------------#

=begin
Question 3
Consider the following method and a call to that method:


def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)


Use the ruby documentation to determine what this code will print.

Answer 3
[4, 5, 3, 6]
=end

#------------------------------------------------------------------------------#

=begin
Question 4
The Array#bsearch method is used to search ordered Arrays more quickly than 
#find and #select can. Assume you have the following code:
=end

# a = [1, 4, 8, 11, 15, 19]

=begin
How would you search this Array to find the first element whose value exceeds 8?

Answer 4
=end
# p a.bsearch {|el| el > 8}

#------------------------------------------------------------------------------#

=begin
Question 5
What do each of these puts statements output?


a = %w(a b c d e)
# puts a.fetch(7)
puts a.fetch(7, 'beats me')
puts a.fetch(7) { |index| index**2 }


Answer 5
Error
beats me
49
=end

#------------------------------------------------------------------------------#

=begin
Question 6
What does this code print?


5.step(to: 10, by: 3) { |value| puts value }


Answer 6
5
8
=end

#------------------------------------------------------------------------------#

=begin
Question 7
Use irb to run the following code:


s = 'abc'
puts s.public_methods(false).inspect


You should find that it prints a list of all of the public methods available 
to the String s; this includes not only those methods defined in the String 
class, but also methods that are inherited from Object (which inherits other 
methods from the BasicObject class and the Kernel module). That's a lot of 
methods.

How would you modify this code to print just the public methods that are 
defined or overridden by the String class? That is, the list should exclude 
all members that are only defined in Object, BasicObject, and Kernel.

Answer 7
Set the public_methods parameter to false.
=end

#------------------------------------------------------------------------------#

=begin
Question 8
Use irb to run the following code:

a = [5, 9, 3, 11]
puts a.min(2)

Find the documentation for the #min method and change the above code to print
the two smallest values in the Array.

Answer 8
a.min(2)  Also, I found this in the Ruby 3.1.2 doc.  It was missing from the
linked 2.3.0 doc.
=end

#------------------------------------------------------------------------------#

=begin
Question 9
Sometimes, the documentation is going to leave you scratching your head.

In a very early assignment at Launch School, you are tasked with writing a 
program that loads some text messages from a YAML file. We do this 
with YAML::load_file:


require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')


Find the documentation for YAML::load_file.

Answer 9
I found under the YAML page that it's an alias for Psych. Psych has a method
named load_file which takes arguments filename, and **kwargs. No idea about
the latter.
=end

