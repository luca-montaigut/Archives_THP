class Gossip < ApplicationRecord
  belongs_to :user
  has_many :join_table_tag_gossips
  has_many :tags, through: :join_table_tag_gossips
  has_many :comment
  has_many :users, through: :comment
end
