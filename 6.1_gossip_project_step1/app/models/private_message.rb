class PrivateMessage < ApplicationRecord
  belongs_to :sender, class_name: "User"
  has_many :join_pm_receivers
  has_many :recipients, class_name: "User", through: :join_pm_receivers
end
