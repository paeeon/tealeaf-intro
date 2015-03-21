def uuid_generator
  uuid = [*('a'..'z'),*('0'..'9')].shuffle[0,32].join
  uuid.insert(8, '-').insert(13, '-').insert(18, '-').insert(23, '-')
end

# Alternative: 
# def generate_UUID
#     characters = [] 
#     (0..9).each{ | digit | characters << digit.to_s}
#     ('a'..'f').each{ | digit | characters << digit}
# 
#     uuid = ""
#     sections = [8, 4, 4, 4, 12]
#     sections.each_with_index do |section, index|
#       section.times{ uuid += characters.sample }
#       uuid += '-' unless index >= sections.size - 1
#     end
# 
#     return uuid
# end