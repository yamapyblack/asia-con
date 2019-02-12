class AddColumnToMaterialPrice < ActiveRecord::Migration[5.1]
  def change
    add_column :materials, :price, :integer
    add_column :materials, :unit, :integer
  end
end
