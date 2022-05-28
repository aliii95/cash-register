class Discount
  attr_accessor :type, :required_minimum_units, :free_units,
                :discounted_amount, :discount_ratio

  # Discount Schemes or Types
  BUY_FEW_GET_FEW = 'buy_few_get_few'.freeze # relevant attributes: required_units, free_units
  FLAT_DISCOUNT = 'flat_discount'.freeze # relevant attributes: required_minimum_units, discounted_amount
  RATIO_DISCOUNT = 'ratio_discount'.freeze # relevant attributes: required_minimum_units, discount_ratio

  def initialize(options = {})
    @type = options[:type]
    @free_units = options[:free_units]
    @discount_ratio = options[:discount_ratio]
    @discounted_amount = options[:discounted_amount]
    @required_minimum_units = options[:required_minimum_units]
  end

  # TODO: Add attributes presence validation with respect to discount scheme type
end
