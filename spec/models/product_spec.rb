require 'rails_helper'

RSpec.describe Product, :product, type: :model do
  it 'is valid with description, price and category' do 
    product = create(:product)
    expect(product).to be_valid 
  end

  it { is_expected.to validate_presence_of(:description) }

  it { is_expected.to validate_presence_of(:price) }

  it { is_expected.to validate_presence_of(:category) }

  it 'full description' do
    product = create(:product)
    expect(product.full_description).to eq("#{product.description} -- #{product.price} -- #{product.category}}")  
  end
end
