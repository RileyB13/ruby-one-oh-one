# Q: What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# A: Uniq is not mutating and therefore the array remains unchanged. Using puts instead of p means we're going to see 1\n2\n2\n3 (p numbers would give [1, 2, 2, 3]).  
# I almost nailed it word for word. Learned: puts calls to_s on its argument.  p calls inspect.