class Television

  def self.manufacturer
    # method logic
  end 

  def model
    # method logic
  end
end

# You can tell that manufacturer is a class method because it starts with self, which
# in this case refers to the class Television rather than an instance of the class 
# Television. 

# You can call a class method like so: 
Television.manufacturer