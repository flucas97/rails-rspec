require 'rails_helper'

RSpec.describe Customer, :customer, type: :model do
  let(:customer) { create(:customer) }
  let(:customer_vip) { create(:customer_vip) }  
  let(:days_to_pay) { create(:days_to_pay) }

  it 'Vip true' do
    expect(customer_vip.vip).to be true
  end

  it 'Vip false' do
    customer_vip.update(vip: false)
    expect(customer_vip.vip).to be false
  end

  it 'Days to pay' do
    expect(days_to_pay.days_to_pay).to eq(10)
  end

  it 'Name Test' do
    expect(customer.name).to eq(Customer.last.name)
  end

  it 'Email Test' do
    expect(customer.email).to eq(Customer.last.email)
  end

  it 'Upcase name' do
    customer = create(:customer, upcased: true)
    expect(customer.name.upcase).to eq(customer.name)
  end

  it { expect{ create(:customer) }.to change{Customer.all.size}.by(1) }
end
