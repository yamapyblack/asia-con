class ChangeColumnToMaterialCategory < ActiveRecord::Migration[5.1]
  def change
    remove_column :materials, :category_id, :integer
    add_column :materials, :category_ids, :integer, array: true, after: :id
  end
end
