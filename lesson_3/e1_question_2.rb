# 1. what is != and where should you use it?
# put ! before something, like !user_name
# put ! after something, like words.uniq!
# put ? before something
# put ? after something
# put !! before something, like !!user_name

# 1. not equal 'comparator'. Used to compare two expressions and get a boolean.
# 2. bang before means opposite boolean. !true == false. If user_name is truthy, !user_name is not.
# 3. bang after a method call is usually (not always, this is just a usually true type of convention) indicating a version of a method call that is mutating the caller.(naming convention, not syntax)
# 4. I'm not sure what a question mark before something means.  I guess we'll find out when I hit solutions. OHHHHHHHHH yeah it's used in ternaries. Forgot all about that. Oooops.
# 5. Question mark after something is usually after method invocations that return booleans. array.include?(some_value) returns true is some_value is found in the array. (naming convention, not syntax)
# 6. The mythical double bang. Two wrongs make a right. true == true. !true == false. !!true == true. If user_name is truthy, so is !!user_name.