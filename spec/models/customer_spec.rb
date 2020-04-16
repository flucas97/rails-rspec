require 'rails_helper'

RSpec.describe Customer, :customer, type: :model do
  fixtures :customers

  it 'create a Customer' do
    customer = customers(:lucas)

    expect(customer.name).to eq("Lucas Feijo")          
  end
end
