class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def self.hi
    g = Greeting.new # This makes sense - you have to initialize an instance of Greeting first. 
    g.greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

Hello.hi