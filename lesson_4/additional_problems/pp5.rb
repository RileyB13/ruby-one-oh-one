=begin
P - 
Find the index of the first name that starts with "Be"
input: array
output: integer

E -

D -
array, integer

A - 
Initialize empty array
Add indexes to new array where element starts with "Be"
Return index zero of new array

Code with Intent
=end

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

be_array = []

flintstones.each_with_index do |name, index|
  if name[0..1] == "Be"
    be_array << index
  end
end

p be_array[0]