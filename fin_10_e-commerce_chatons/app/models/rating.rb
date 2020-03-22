class Rating < ApplicationRecord
  before_create :check_if_exist

  has_one :user
  has_one :item

  private

  def check_if_exist
    rate = Rating.find_by(user_id: self.user_id, item_id: self.item_id)
    
    if rate != nil
      rate.destroy
    end  
  end
end
