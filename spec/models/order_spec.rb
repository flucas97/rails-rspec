require 'rails_helper'

RSpec.describe Order, :order, type: :model do
    it "Add one item" do
      order = create(:order)
      p order.description
      expect(order.customer).to be_kind_of(Customer)  
    end
end
