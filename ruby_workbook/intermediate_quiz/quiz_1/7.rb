limit = 15

def fib(first_num, second_num)
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0,1)
puts "result is #{result}"

# I dunno?? Does limit have to be announced within fib's scope??? 
# Oh wow, I was right! I guess you could also make limit an additional argument to the fib method. 