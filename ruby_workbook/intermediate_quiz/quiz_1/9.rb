characters = [
    {:character=>"Batman", :real_name=>"Bruce Wayne", :description=>"Comic book superhero who fights crime while wearing a costume loosely based on a bat"}, 
    {:character=>"Robin", :real_name=>"Dick Grayson", :description=>"Loyal sidekick for batman -- much younger and smaller and sometimes portrayed by girl in later episodes"},
    {:character=>"Commisioner Gordon", :real_name=>"James Gordon", :description=>"Police Commisioner of Gotham City and loyal friend of Batman -- frequently communicates secretly with Batman via signals or a special red BatPhone"}, 
    {:character=>"Alfred", :real_name=>"Alfred", :description=>"The butler and also a key support player in many episodes providing communications, armament, and also moral support to Batman"}
    ]

class String
  def shortener
    if self.length > 32
      self[29..-1] = "..."
    end
  end
end

characters.each do |char| 
  char[:character].shortener
  char[:real_name].shortener
  char[:description].shortener
end 

# characters.each{ |character| p character.values.map{|value| value.short_version(32) }.join("    ") } is a much cleverer way to do this

p characters