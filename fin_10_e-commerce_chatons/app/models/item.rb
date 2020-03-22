class Item < ApplicationRecord

  validates :title, 
    presence: true,
    length: { in: 3..50 }
  validates :description,
    length: { maximum: 1024 }
  validates :price,
    numericality: { greater_than: 0 }

  has_one_attached :picture

  validates :picture, 
    presence: true

  belongs_to :category

  has_many :join_cart_items
  has_many :carts, through: :join_cart_items

  has_many :join_order_items
  has_many :orders, through: :join_order_items

  has_many :comments
  has_many :users, through: :comments

  has_many :rating

  def join_id(user)
    self.join_cart_items.where(cart: user.cart.id)
  end

  def quantity(id)
    self.join_cart_items.find_by(cart_id:id).quantity
  end
  
  def item_average_rating
    unless self.rating.count == 0
      self.rating.pluck(:rating).sum / self.rating.count
    end
  end

  def item_star(star = 0)
    if star == 0
      self.rating.count
    else
      self.rating.where(rating: star).count
    end
  end

  def percent(num)
    self.item_star(num).to_f / self.item_star * 100
  end
end
