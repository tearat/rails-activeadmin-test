class ShopListSerializer < ActiveModel::Serializer
  attributes :id, :title, :has_items

  def has_items
      self.object.items.size > 0
  end
end
