class AddCategoriesToItems < ActiveRecord::Migration[5.2]
  def change
    add_belongs_to :items, :category, foreign_key: true
  end
end
