require 'rails_helper'

RSpec.describe CustomersController, :customer_controller, type: :controller do
  let(:member) { create(:member )}

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
  end

  context 'Validations' do 

  end
end
