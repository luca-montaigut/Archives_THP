# frozen_string_literal: true

# Model for comment
class Comment
  attr_accessor :id, :content

  def initialize(id, comment)
    @id = id
    @content = comment
  end

  def save
    CSV.open('db/comment.csv', 'ab') do |csv|
      csv << [@id, @content]
    end
  end

  def self.all
    all_comment = []
    CSV.read('./db/comment.csv').each do |csv_line|
      all_comment << Comment.new(csv_line[0], csv_line[1])
    end
    all_comment
  end
end
