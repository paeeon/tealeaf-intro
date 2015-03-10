words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

result = {}

words.each do |word|
  key = word.split('').sort.join
  #so at this point, key contains demo
  if result.has_key?(key)
  #does result contain a key titled demo? no, it doesn't, because it's empty
    result[key].push(word)
  else
  #so we'll add a key-value hash to result, with the word demo as the key, and demo as the word. 
    result[key] = [word]
  end
end

result.each do |k, v|
  puts "------"
  p v
end