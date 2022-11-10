# Q: What do the following method calls do assuming we reset numbers to the original array between method calls?

numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1)
numbers.delete(1)

# A: delete_at(1) is going to destructively (mutator) remove whatever is indexed at the 1 position. In this case 2 is removed from numbers array and is the return value of that method call.
# A: delete(1) is going to destructively (mutator) remove any value in the caller matching the value 1. 1 is removed from the numbers array and is the return value of the method call.