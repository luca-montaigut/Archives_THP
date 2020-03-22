class JoinOrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :item

  def total
    self.buying_price * self.quantity 
  end

end
