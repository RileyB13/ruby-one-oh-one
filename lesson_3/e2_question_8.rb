# Q: Shorten the following sentence:
advice = "Few things in life are as important as house training your pet dinosaur."

# Review the String#slice! documentation, and use that method to make the return value "Few things in life are as important as ". But leave the advice variable as "house training your pet dinosaur.".
p advice.slice!("Few things in life are as important as ")
p advice
# Bonus: As a bonus, what happens if you use the String#slice method instead?
# A: You will get the same return value, but it doesn't remove the desired substring from the original.