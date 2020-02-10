class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name
      t.belongs_to :city, index: true

      t.timestamps
    end
  end
end
