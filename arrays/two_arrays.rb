def increase_by_2(array)
  second_array = []
  array.map do | value |
    second_array << value + 2
  end
  p "Your original array: #{array}"
  p "Your second array: #{second_array}"
end

increase_by_2([6,4,2])