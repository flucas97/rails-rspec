require 'rails_helper'

RSpec.describe Customer, :customer, type: :model do
  it { expect{ create(:customer) }.to change{Customer.all.size}.by(1) }
end
