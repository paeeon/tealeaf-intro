# class String
#   def pretty_short_version
#     if self.length > (30)
#       self[0..30].gsub(/\s\w+\s*$/, '...')
#     end
#   end
# end

# Really long alternative that addresses short words too, I guess: 
#
# class String
#   def pretty_short_version( length )
#     result = self.dup
#     starting_length = self.length
#     if starting_length > length
#         length -= 1   # leave room for ellipsis
#         words = result.split
#         result = words.shift
#         result = result[0, length] if result.length > length
#         result += ' ' + words.shift while(!words.empty? && ((result.length + words.first.length + 1) < length))
#         result += "…"
#     end
# 
#     return result
#   end
# end

class String
  def pretty_short_version(length_param)
    result = self.dup
    starting_length = self.length
    if starting_length > length_param
      length_param -= 1 #to leave room for the ellipsis... ohhhh I see the ellipsis is just a single character! *facepalm*
      words = result.split #words variable now contains the string, but split into an array of WORDS
      result = words.shift #result variable now contains the first word in the string
      result = result[0, length_param] if result.length > length_param #if the length of that first word in the string is greater than the passed length parameter, then result will be set to the string, up to the length parameter.
      result += ' ' + words.shift while(!words.empty? && ((result.length + words.first.length + 1) < length_param)) #adds the rest of the words in the string to result, while there are still words available in the string AND the length of the result string plus the length of the word that's about to be put in the result string (plus 1, for the ellipsis) doesn't surpass the passed length_param. 
      result +=  "…" #adds ellipsis at the end
    end
    return result
  end
end

p "Man, this string has to be really long before I can see if this method works!".pretty_short_version(30)
p "Woowiggawamwoowiggawoowoo".pretty_short_version(20)
