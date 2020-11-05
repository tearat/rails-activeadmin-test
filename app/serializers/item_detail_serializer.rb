class ItemDetailSerializer < ActiveModel::Serializer
    attributes :id, :title, :shop

    def shop
        self.object.shop.as_json except: [:created_at, :updated_at]
    end
end
