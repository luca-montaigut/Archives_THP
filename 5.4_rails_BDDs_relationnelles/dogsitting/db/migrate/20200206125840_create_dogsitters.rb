class CreateDogsitters < ActiveRecord::Migration[5.2]
  def change
    create_table :dogsitters do |t|
      t.string :first_name
      t.string :last_name
      t.belongs_to :city, index: true

      t.timestamps
    end
  end
end
