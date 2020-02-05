class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :title
      t.string :album
      t.string :artist
      t.integer :duration
      t.integer :size
      t.float :price

      t.timestamps
    end
  end
end
