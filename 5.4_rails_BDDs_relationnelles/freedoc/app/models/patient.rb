class Patient < ApplicationRecord
  belongs_to :city
  has_many :appointments
  has_many :doctors, through: :appointments
end
