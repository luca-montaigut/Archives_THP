class Gossip < ApplicationRecord
  validates :title,
    presence: true,
    length: { minimum: 3, too_short: "%{count} characters is the minimum allowed", maximum: 14, too_long: "%{count} characters is the maximum allowed" }
  validates :content,
    presence: true
  belongs_to :user
  has_many :join_table_tag_gossips
  has_many :tags, through: :join_table_tag_gossips
  has_many :comments
  has_many :users, through: :comments
end
