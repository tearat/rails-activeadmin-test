class ShopsController < ApplicationController
    before_action :set_item, only: [:show]

    def index
        render json: Shop.all, each_serializer: ShopListSerializer
    end

    def show
        render json: @shop, serializer: ShopDetailSerializer
    end

    private

    def set_item
        if Shop.exists?(params[:id])
            return @shop = Shop.find(params[:id])
        else
            render :json => {:error => "Item not found"}, :status => 404
        end
    end
end
