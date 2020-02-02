# frozen_string_literal: true

# Model for gossips
class Gossip
  attr_reader :author, :content
  
  def initialize(author, content)
    @author = author
    @content = content
  end

  def save
    CSV.open("db/gossip.csv", "ab") do |csv|
      csv << [@author, @content]
    end 
  end

  def self.all
    all_gossips = []
    CSV.foreach("db/gossip.csv") do |row|
      gossip_temp = Gossip.new(row[0], row[1])
      all_gossips << gossip_temp
    end
    all_gossips
  end
end