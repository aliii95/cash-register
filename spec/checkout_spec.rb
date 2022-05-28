require 'checkout'

RSpec.describe Checkout do
  describe 'methods and attributes' do
    it { should respond_to :cart }
    it { should respond_to :product_count }
    it { should respond_to :scan }
    it { should respond_to :total }
  end
end
