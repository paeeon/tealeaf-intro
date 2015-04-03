class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

# hello = Hello.new
# hello.hi
# Will result in an output of "Hello" - yep! I'm right! 

# hello = Hello.new
# hello.bye
# Will result in nothing! Yeah, undefined method 'bye'

# hello = Hello.new
# hello.greet
# Will result in an error because no variable was sent. 
# Yup! wrong number of arguments (0 for 1)

# hello = Hello.new
# hello.greet("Goodbye")
# Will result in an output of "Goodbye" Yup! 

Hello.hi
# Will result in an output of "Hello" 
# Ohh, undefined method `hi'. I guess it's looking for a class method called 'hi'?