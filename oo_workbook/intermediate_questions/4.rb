class InvoiceEntry
  attr_reader :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    # prevent negative quantities from being set
    quantity = updated_count if updated_count >= 0
  end
end

# I guess changing attr_reader to attr_writer might be bad because update_quantity is a 
# public method, and it should really be a private method? Ok, again, I was *kinda* 
# close. Using attr_writer would lead to update_quantity altering the public interfaces 
# of the class. In other words, I'd be allowing clients of the class to change the 
# quantity directly by calling the accessor with instance.quantity = <new value> notation. 
# This is bad! 