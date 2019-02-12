class AddColumnToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :icon_image, :string
    add_column :users, :phone_no, :string
  end
end
