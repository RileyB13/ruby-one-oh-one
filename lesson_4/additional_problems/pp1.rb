=begin
Process the Problem - 
Given an array, turn it into a hash where the elements are the keys and the
indexes for those elements are the values.
input: array
output: hash

Examples:
hash_flintstones = {
  "Fred" => 0,
  "Barney" => 1,
  "Wilma" => 2,
  "Betty" => 3,
  "Pebbles" => 4,
  "BamBam" => 5
}

Data Structure - 
Array to hash

Algorithm
Initialize an empty hash
iterate through the array putting element keys into the hash along with their
index values

Code with intent
=end

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

hash_flintstones = {}

flintstones.each_with_index do |name, index|
  hash_flintstones[name] = index
end

p hash_flintstones