class CreateJoinPmReceivers < ActiveRecord::Migration[5.2]
  def change
    create_table :join_pm_receivers do |t|
      t.belongs_to :private_message, index: true
      t.references :recipient, index: true

      t.timestamps
    end
  end
end
