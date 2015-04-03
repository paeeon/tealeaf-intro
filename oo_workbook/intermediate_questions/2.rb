class BankAccount
  attr_reader :balance

  def initialize(starting_balance)
    @balance = starting_balance
  end

  def positive_balance?
    balance >= 0
  end
end

# I think using balance without the @ is acceptable here because there's an 
# attr_reader up top? Got it - what the attr_reader means is that Ruby will 
# automatically create a method called balance that returns the value of the 
@balance instant variable. 