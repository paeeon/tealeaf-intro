class Television

  def self.manufacturer
    # method logic
  end 

  def model
    # method logic
  end
end

tv = Television.new
tv.manufacturer # I'm guessing this would result in an error b/c manufacturer is a class method
tv.model # This would call the model method on tv

Television.manufacturer # This would work
Television.model # This wouldn't work b/c model is an instance method