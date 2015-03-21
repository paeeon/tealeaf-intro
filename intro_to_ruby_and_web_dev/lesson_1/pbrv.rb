def some_method(arr)
  arr.uniq!
end

arr = [1, 4, 2, 4, 5, 2, 3]
some_method(arr)
p arr

# Methods that do not mutate the caller result in an unchanged arr outside of the method. 
# Methods that DO mutate the caller result in a changed arr outside of the method. 