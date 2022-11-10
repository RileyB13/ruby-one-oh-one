=begin
Question 1
Every object in Ruby has access to a method called object_id, which returns 
a numerical value that uniquely identifies the object. This method can be 
used to determine whether two variables are pointing to the same object.

Take a look at the following code and predict the output:
=end

a = "forty two"
b = "forty two"
c = a

puts a.object_id
puts b.object_id
puts c.object_id

=begin
--Answer:
# c & a are pointing to the same object. b will have a unique object_id.
=end

#------------------------------------------------------------------------------#

=begin
Question 2
Let's take a look at another example with a small difference in the code:
=end

a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id

=begin
--Answer:
They all share the same object_id.  Integers are immutable.
=end

#------------------------------------------------------------------------------#

=begin
Question 3
Let's call a method, and pass both a string and an array as arguments and
see how even though they are treated in the same way by Ruby, the results 
can be different.

Study the following code and state what will be displayed...and why:
=end

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

=begin
--Answer:
my_string will be "pumpkins"
my_array will be w%(pumpkins rutabaga)
=end

#------------------------------------------------------------------------------#

=begin
Question 4
To drive that last one home...let's turn the tables and have the string show 
a modified output, while the array thwarts the method's efforts to modify the
user's version of it.
=end

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

=begin
--Answer:
Yeah now string is going to be modified into "pumpkinsrutabaga"
And the array is going to remain ["pumpkins" because tricky_method is just 
assigning to new local variable not mutating the existing array
=end

#------------------------------------------------------------------------------#

=begin
Question 5
Depending on a method to modify its arguments can be tricky:
=end

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

=begin
Whether the above "coincidentally" does what we think we wanted depends upon what is going on inside the method.

How can we change this code to make the result easier to predict and easier
for the next programmer to maintain? That is, the resulting method should not
mutate either argument, but my_string should be set to 'pumpkinsrutabaga' and 
my_array should be set to ['pumpkins', 'rutabaga']
=end
# Answer: This one was difficult to wrap my head around what was needed.

def not_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]
  
  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

#------------------------------------------------------------------------------#

=begin
Question 6
How could the following method be simplified without changing its return value?
=end

def color_valid(color)
  color == ("blue" || "green")
end

