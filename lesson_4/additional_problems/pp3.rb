=begin
P -
In the ages hash, remove the people with ages 100 and greater
input: hash
output: smaller hash

E - 
new_ages = {
  "Herman" => 32,
  "Lily" => 30,
  "Eddie" => 10
}

D -
Hash

Algo - 
Select the hash pairs where the value is less than 100
Assign return value to new hash

Code with Intent
=end

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

new_ages = ages.select do |name, age|
  age < 100
end

p new_ages