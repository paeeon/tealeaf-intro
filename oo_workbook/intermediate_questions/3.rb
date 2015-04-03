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

# I'm guessing this won't work because update_quantity attempts to 
# alter the quantity variable, but it doesn't know how to do that because
# it only has read permissions. Oh, ok. I see that I'm kinda right. The 
# alternative is the reference the instance variable directly within
# update_quantity, like so @quantity = updated_count if updated_count >= 0