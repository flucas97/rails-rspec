require 'rails_helper'

RSpec.describe CustomersController, :customer_controller, type: :controller do
  let(:member) { create(:member) }
  let(:customer) { create(:customer) }

  context 'Actions' do
    it '#index' do
      get :index
      expect(response).to be_successful 
    end
    it '#create' do
      expect(member).to be_valid
    end
    it '#update' do
      member.update(password: '123')
      expect(response).to be_successful
    end
    it '#show' do 
      sign_in member
      get :show, params: { id: customer.id }
      expect(response).to have_http_status(200)
      expect(response).to render_template('show')
    end
  end

  context 'Validations' do 
    it 'with valid attributes' do
      customer_params = attributes_for(:customer)
      sign_in member
      expect{
        post :create, params: { customer: customer_params }
      }.to change(Customer, :count).by(1)
    end
  end
end