require 'rails_helper'

RSpec.feature "Customers", :customer_view, type: :feature, js: true do
  it 'Visit index page' do 
    visit(customers_path)
    expect(page).to have_current_path(customers_path)
  end
end
