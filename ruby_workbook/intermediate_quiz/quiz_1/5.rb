def factors(number)
  dividend = number
  divisors = []
  while (dividend > 0) do
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

p factors(24)

# number % dividend checks whether or not the number is equally divisible by the dividend. 
# If it isn't, then the result would be something other than 0. 

# The purpose of the second to last line is to make sure the final output of the method is 
# divisors. Otherwise I would guess that it might be 0 (ok, it's actually nil). 