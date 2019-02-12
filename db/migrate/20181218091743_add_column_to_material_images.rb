class AddColumnToMaterialImages < ActiveRecord::Migration[5.1]
  def change
    add_column :materials, :image_1, :string
    add_column :materials, :image_2, :string
    add_column :materials, :image_3, :string
    add_column :materials, :image_4, :string
    add_column :materials, :image_5, :string
  end
end
