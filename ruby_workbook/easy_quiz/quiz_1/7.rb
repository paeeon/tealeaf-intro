def add1(num)
  num + 4
end

num = 2

how_deep = "num"
10.times{ how_deep.gsub!("num", "add1(num)") }
how_deep.eval

# gives us how_deep = "add1(add1(add1(add1(add1(add1(add1(add1(add1(add1(num))))))))))"

