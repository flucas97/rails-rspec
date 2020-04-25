require 'rails_helper'

RSpec.describe "Customers", :customer_request, type: :request do
  describe "GET /customers" do
    it "index - JSON 200" do
      get "/customers.json"
      expect(response.body).to include_json([
        id: 1
      ])
    end
    it "show - JSON 200" do
      get "/customers/1.json"
      expect(response.body).to include_json(
        id: 1,
        name: "Tory Gibson",
        email: "maryam@williamson.org"
      )
    end
  end
end
