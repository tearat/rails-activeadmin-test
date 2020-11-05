class ShopDetailSerializer < ActiveModel::Serializer
  attributes :id, :title, :items

  def items
      self.object.items.as_json except: [:created_at, :updated_at]
  end
end
