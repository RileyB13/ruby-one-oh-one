# Q: Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."

p advice.gsub!("important", "urgent")

# Originally I did a split, array assignment, and a join. It felt verbose, but worked. gsub is better for sure.