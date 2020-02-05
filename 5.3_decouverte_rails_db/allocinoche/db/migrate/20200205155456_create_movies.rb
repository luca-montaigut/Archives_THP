class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name
      t.integer :year
      t.string :genre
      t.text :synopsis
      t.string :director
      t.float :allocinoche_rating
      t.integer :my_rating
      t.boolean :already_seen

      t.timestamps
    end
  end
end
