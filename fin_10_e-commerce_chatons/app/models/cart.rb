class Cart < ApplicationRecord
  has_one :user

  has_many :join_cart_items
  has_many :items, through: :join_cart_items

  def in_cart
    self.items
  end

  def total
    self.join_cart_items.map{ |item| item.total }.sum
  end

  def is_in_cart?(id)
    self.join_cart_items.find_by(cart_id: self.id, item_id: id)
  end
end
