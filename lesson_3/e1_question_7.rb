# Q: If we build an array like this:
# We will end up with a nested array.
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
# Un-nest it.
p flintstones.flatten!