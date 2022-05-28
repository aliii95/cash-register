class Checkout
  # Cart contains list of products and each product count in cart is stored in product_count
  attr_reader :cart, :product_count

  def initialize
    @cart = []
    @product_count = {}
  end

  def scan(product)
    @cart << product
    @product_count[product.code] = @product_count[product.code].to_i + 1

    self
  end

  def total
  end
end
