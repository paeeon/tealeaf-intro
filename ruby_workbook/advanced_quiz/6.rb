str = "Herman Munster is a BIG BIG man."

# class String
#   def map_words!
#     self.split(/\W/).each{|word| word.reverse!}.join(" ").concat(".")
#   end
# end
# woops thats like a direct version

class String
  def map_words!
    punctuation = self.match(/\p{Punct}$/)[0] || '' #wtf is this shit LOL i mean i could have figured it out eventually but damn
    ary = self.split(/\W/)
    ary.map! { |word| yield word }
    self.replace(ary.join(' ') + punctuation)
    return self
  end
end

str.map_words!{|x| x.reverse}