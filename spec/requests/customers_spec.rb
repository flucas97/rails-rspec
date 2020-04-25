require 'rails_helper'

RSpec.describe "Customers", :customer_request, type: :request do
  describe "GET /customers" do
    it "index - JSON 200" do
      get "/customers.json"
      expect(response.body).to include_json([
        id: 1
      ])
    end
  end
end
