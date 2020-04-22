require 'rails_helper'

RSpec.describe Product, :product, type: :model do
  it 'is valid with description, price and category' do 
    product = create(:product)
    expect(product).to be_valid 
  end
end
