class AddImagetoTask < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :image, :string
  end
end
