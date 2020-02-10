class Listing < ApplicationRecord
  validates :available_beds,
    presence: true,
    numericality: { greater_than: 0 }
  validates :price,  
    presence: true,
    numericality: { greater_than: 0 }
  validates :description,
    presence: true,
    length: { minimum: 140}  
  validates :welcome_message,
    presence: true

  belongs_to :admin, class_name: 'User'
  belongs_to :city
  has_many :reservations
  has_many :guests, through: :reservations
end
