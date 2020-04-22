require 'rails_helper'

RSpec.describe CustomersController, :customer_controller, type: :controller do
  it '#index' do
    get :index
    expect(response).to be_success  
  end
end
