require 'rails_helper'

RSpec.describe "Items", type: :request do
    before(:context) do
        @shop = Shop.create!(title: "A shop")
        @item = Item.create!(title: "An item", shop_id: @shop.id)
    end

    it "opens index page" do
        get "/items"
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq("application/json; charset=utf-8")

        get "/items/#{@item.id}"
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq("application/json; charset=utf-8")
    end
end
