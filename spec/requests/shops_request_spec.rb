require 'rails_helper'

RSpec.describe "Shops", type: :request do
    before(:context) do
        @shop = Shop.create!(title: "A shop")
    end

    it "opens index page" do
        get "/shops"
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq("application/json; charset=utf-8")

        get "/shops/#{@shop.id}"
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq("application/json; charset=utf-8")
    end
end
