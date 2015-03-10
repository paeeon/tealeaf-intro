words_to_check = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

def has_lab(all_words)
  all_words.each do |word|
    if /lab/.match(word)
      puts word
    else
      puts "The word 'lab' isn't in #{word}!"
    end
  end
end

has_lab(words_to_check)