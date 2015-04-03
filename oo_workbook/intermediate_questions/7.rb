# First example 
class Computer
  attr_accessor :template

  def create_template
    @template = "template 14231"
  end

  def show_template
    template
  end
end

# Second example
class Computer
  attr_accessor :template

  def create_template
    self.template = "template 14231"
  end

  def show_template
    self.template
  end
end

# The difference here is that the second example uses self in the instance methods 
# and the first example modifies the instance variable directly

# I guess there is actually no difference at all. The self reference is not needed 
# as we have access to both setter and getter methods here. Even though both options
# are technically fine, the general rule from the Ruby style guide is to "Avoid self
# where not required."