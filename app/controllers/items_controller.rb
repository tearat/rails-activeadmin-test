class ItemsController < ApplicationController
    before_action :set_item, only: [:show]

    def index
        render json: Item.all, each_serializer: ItemListSerializer
    end

    def show
        render json: @item, serializer: ItemDetailSerializer
    end

    private

    def set_item
        if Item.exists?(params[:id])
            return @item = Item.find(params[:id])
        else
            render :json => {:error => "Item not found"}, :status => 404
        end
    end
end
