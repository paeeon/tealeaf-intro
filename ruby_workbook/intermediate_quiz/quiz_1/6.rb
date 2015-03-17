def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

# Yeah, umm, my guess is that the second one actually might try something different and 
# unplanned, like actually add input_array and a Fixnum together, rather than adding new_element 
# as an array item?? 

# LOL okay I was completely wrong, the difference is that rolling_buffer1 doesn't result in a 
# modified buffer value, whereas rolling_buffer2 does. 