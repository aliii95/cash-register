require 'product'

RSpec.describe Product do
  it { should respond_to :code }
  it { should respond_to :price }
  it { should respond_to :name }
  it { should respond_to :discount_rule }
end
