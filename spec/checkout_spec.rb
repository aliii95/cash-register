require 'checkout'
require 'product'
require 'discount'

RSpec.describe Checkout do

  describe 'methods and attributes' do
    it { should respond_to :cart }
    it { should respond_to :product_count }
    it { should respond_to :scan }
    it { should respond_to :total }
  end

  describe '#scan' do
    before do
      subject.scan(product1).scan(product1)
      subject.scan(product2)
    end

    let(:product1) { Product.new(code: 'GR1') }
    let(:product2) { Product.new(code: 'SR1') }

    it 'scans and updates the cart' do
      expect(subject.cart.length).to eq(3)
    end

    it 'scans and updates the product_count' do
      expect(subject.product_count).to(
        eq({ 'GR1' => 2, 'SR1' => 1 })
      )
    end
  end
end
