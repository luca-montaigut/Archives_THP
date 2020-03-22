class CreateJoinOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :join_order_items do |t|
      t.decimal :buying_price
      t.integer :quantity
      t.belongs_to :order, foreign_key: true
      t.belongs_to :item, foreign_key: true

      t.timestamps
    end
  end
end
