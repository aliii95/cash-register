class Product
  attr_accessor :code, :name, :price, :discount_rule

  def initialize(options = {})
    @code = options[:code]
    @name = options[:name]
    @price = options[:price]
    @discount_rule = options[:discount_rule]
  end
end
