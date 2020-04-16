require 'rails_helper'

RSpec.describe Customer, :customer, type: :model do
  let(:customer) { create(:customer) }

  it { expect{ create(:customer) }.to change{Customer.all.size}.by(1) }

  it 'Name Test' do
    expect(customer.name).to eq(Customer.last.name)
  end
  it 'Email Test' do
    expect(customer.email).to eq(Customer.last.email)
  end
end
