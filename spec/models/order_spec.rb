require 'rails_helper'

RSpec.describe Order, :order, type: :model do
    it "Add one item" do
      order = create(:order)
      expect(order.customer).to be_kind_of(Customer)  
    end

    it "Three itens" do
      order = create_list(:order, 5)
      expect(order.count).to eq(5)  
    end
end
