class Dogsitter < ApplicationRecord
  has_many :strolls
  has_many :dogs, through: :strolls
  belongs_to :city
end
