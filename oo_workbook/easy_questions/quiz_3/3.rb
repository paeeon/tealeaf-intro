class AngryCat

  def initialize(age, name)
    @age  = age
    @name = name 
  end

  def age
    puts @age
  end

  def name
    puts @name
  end

  def hiss
    print "Hisssss!!!"
  end

end

cutie = AngryCat.new(1, "Cutie")
scary = AngryCat.new(3, "Scary")