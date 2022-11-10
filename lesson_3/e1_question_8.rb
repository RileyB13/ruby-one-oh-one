# Q: Given the hash turn this into an array containing only two elements: Barney's name and Barney's number.

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

p flintstones.rassoc(2)
# I found rassoc first which does the same thing but using the value rather than the key. assoc works too
p flintstones.assoc("Barney")