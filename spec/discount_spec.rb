require 'discount'

RSpec.describe Discount do
  it { should respond_to :type }
  it { should respond_to :free_units }
  it { should respond_to :discount_ratio }
  it { should respond_to :discounted_amount }
  it { should respond_to :required_minimum_units }
  it { expect(described_class::BUY_FEW_GET_FEW).to eq('buy_few_get_few') }
  it { expect(described_class::FLAT_DISCOUNT).to eq('flat_discount') }
  it { expect(described_class::RATIO_DISCOUNT).to eq('ratio_discount') }
end
